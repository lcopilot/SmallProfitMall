package cn.itcast.controller;

import cn.itcast.domain.accountSettings.AccountSettings;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.OrderQuantity;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.response.faceRecognition.FaceRecognition;
import cn.itcast.response.faceRecognition.FaceRecognitionResponse;
import cn.itcast.response.listFootprint.Pagination;
import cn.itcast.response.listFootprint.ResponsePagination;
import cn.itcast.response.objectReturn.ObjectReturn;
import cn.itcast.response.objectReturn.ObjectReturnResponse;
import cn.itcast.response.queryOrder.QueryOrder;
import cn.itcast.response.queryOrder.ResultOrder;
import cn.itcast.response.returnString.QueryString;
import cn.itcast.response.returnString.ResultString;
import cn.itcast.service.AccountSettingsService;
import cn.itcast.service.OrderService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * @author Kite
 * @date 2020/3/28
 */
@Controller
@RequestMapping("/OrderController")
@ResponseBody
public class OrderController {

    @Autowired
    WebSocket webSocket;

    @Autowired
    OrderService orderService;

    @Autowired
    AccountSettingsService accountSettingsService;

    //判断返回结果
    public static final String RESULT = "SUCCESS";
    /**
     * 购物车订单结算
     * @param userId 用户id
     * @param shoppingCartId 购物车id
     * @return 订单号
     * @throws IOException
     */
    @RequestMapping(value = "/addOrder" ,method = RequestMethod.POST)
    public QueryResponseResult addOrder(String userId ,Integer[] shoppingCartId) throws IOException {
        String result = orderService.addOrder(userId,shoppingCartId);
        QueryResult queryResult=new QueryResult();
        queryResult.setList(Collections.singletonList(result));
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }

    /**
     * 直接购买订单结算
     * @param purchaseInformation 商品对象
     * @return 订单号
     * @throws IOException
     */
    @RequestMapping(value = "/purchaseOrder" ,method = RequestMethod.POST)
    public QueryResponseResult purchaseOrder(@RequestBody PurchaseInformation purchaseInformation) throws IOException {
        String result = orderService.purchaseOrder(purchaseInformation);
        QueryResult queryResult=new QueryResult();
        queryResult.setList(Collections.singletonList(result));
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }

    /**
     * 查询订单
     * @param userId 用户id
     * @param orderId 订单id
     * @return 返回订单信息 账户是否设置支付密码 人脸验证信息
     */
    @RequestMapping(value = "/findOrder/{userId}/{orderId}" , method = RequestMethod.GET)
    public QueryOrder findOrder(@PathVariable("userId") String userId , @PathVariable("orderId") String orderId){
        ResultOrder orderResult = new ResultOrder();
        //订单信息
        Order order=orderService.findOrder(userId,orderId);
        //是否开启人脸 / 密码
        AccountSettings accountSettings = accountSettingsService.findAccountSettings(userId);
        orderResult.setFaceRecognition(accountSettings.getFaceRecognition());
        orderResult.setPaymentPassword(accountSettings.getPaymentPasswordExists());
        orderResult.setOrder(order);
        return new QueryOrder(CommonCode.SUCCESS,orderResult);
    }

    /**
     * 查询不同状态订单集合
     * @param userId 用户id
     * @param orderState 订单状态 0为查所有订单 1为查询待付款订单 2为查询待收货商品集合 3为待评价商品集合 4为退货
     * @return 订单集合
     */
    @RequestMapping(value ="/findAllOrder" )
    public ResponsePagination findAllOrder( String userId,Integer orderState,Integer currentPage , Integer pageSize){
        //判断传入开始页是否为空 为空则默认为第一页
        if (currentPage==null){
            currentPage=1;
        }
        //判断传入每页显示数量 为空则默认为8条
        if (pageSize==null){
            pageSize=8;
        }
        Pagination pagination = new Pagination();
        List<Order> orders = orderService.findAllOrder(userId,orderState,currentPage,pageSize);
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=orderService.fendTotalPage(userId,orderState,pageSize);
            pagination.setList (orders);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage((int) totalPage[1].longValue());
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }

    /**
     * 验证支付密码支付
     * @param userId 用户id
     * @param paymentPassword 用户支付密码
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/verificationPay",method = RequestMethod.POST)
    public QueryResponseResult verificationPay(String userId,String orderId,String paymentPassword) throws Exception {
        if (userId==null||paymentPassword==null){
            return new QueryResponseResult(CommonCode.INVALID_PARAM,null);
        }
        int result = orderService.verificationPay(userId,orderId,paymentPassword);
        if (result==3){
            return new QueryResponseResult(CommonCode.InsufficientBalance,null);
        }
        if (result==1){
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     * 验证人脸支付
     * @param image 用户人图片
     * @param userId 用户id
     * @param videoFile 视频流
     * @orderId OrderId 订单号
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/verificationFace",method = RequestMethod.POST)
    public FaceRecognitionResponse verificationFace(String image, String userId , MultipartFile videoFile,String orderId) throws Exception {
        //视频是否存在
        InputStream videoFiles = null;
        if(videoFile!=null){
            videoFiles=videoFile.getInputStream();
        }
        String result =orderService.verificationFace(image,userId,videoFiles,orderId);
        if (RESULT.equals(result)){
            return new FaceRecognitionResponse(CommonCode.SUCCESS, null);
        }
        //验证失败 返回错误代码
        FaceRecognition faceRecognition=new FaceRecognition();
        faceRecognition.setResult((JSONObject) JSON.parse(result));
        return new FaceRecognitionResponse(CommonCode.FAIL, faceRecognition);
    }

    /**
     * 支付宝支付
     * @param userId 用户id
     * @param orderId 订单id
     * @return 支付宝收银台页面 html
     */
    @RequestMapping(value = "/alipayPay",method = RequestMethod.POST)
    public QueryString alipayPay(String userId,String orderId, HttpServletRequest request) throws Exception {
     String result= orderService.alipayPay(userId,orderId,request);
     ResultString resultString= new ResultString();
     resultString.setString(result);
     return new QueryString(CommonCode.SUCCESS,resultString);
    }

    /**
     * 提交订单
     * @param order
     * @return
     */
    @RequestMapping(value = "/confirmOrder",method = RequestMethod.POST)
    public QueryString confirmOrder(@RequestBody Order order, HttpServletRequest request) throws Exception {
       String result = orderService.confirmOrder(order,request);
       if (result=="1"){
           return new QueryString(CommonCode.SUCCESS,null);
       }
       return new QueryString(CommonCode.FAIL,null);
    }


    /**
     * 返回订单详细
     * @param userId 用户id
     * @param orderId 订单id
     * @return 订单对象
     */
    @RequestMapping(value = "/findDetailedOrder/{userId}/{orderId}",method = RequestMethod.GET)
    public QueryOrder findDetailedOrder(@PathVariable("userId")String userId, @PathVariable("orderId") String orderId){
        Order order = orderService.findDetailedOrder(userId,orderId);
        ResultOrder resultOrder=new ResultOrder();
        resultOrder.setOrder(order);
        return new QueryOrder(CommonCode.SUCCESS,resultOrder);
    }

    /**
     * 修改订单
     * @param order 订单对象
     * @return 影响行数
     */
    @RequestMapping(value = "/updateOrder",method = RequestMethod.PUT)
    public QueryResponseResult updateOrder(@RequestBody Order order) throws Exception {
        Integer changeQuantity = orderService.fenOrderTotal(order.getUserId(),order.getOrderId());
        if (changeQuantity>0){
            return new QueryResponseResult(CommonCode.ChangeQuantity,null);
        }
        Integer result =  orderService.updateOrder(order);
        if (result>1){
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }

    }

    /**
     * 查询各种类型订单数量
     * @param userId
     * @return
     */
    @RequestMapping(value = "/findClassifyOrderQuantity/{userId}",method = RequestMethod.GET)
    public ObjectReturnResponse findClassifyOrderQuantity(@PathVariable("userId")String userId){
        ObjectReturn objectReturn = new ObjectReturn();
        OrderQuantity orderQuantity = orderService.findClassifyOrderQuantity(userId);
        objectReturn.setObject(orderQuantity);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

    /**
     * 删除商品
     * @param  productState 不同状态商品 1为待收货 2为已收货 3为待评价 4为售后
     * @param id 订单id
     * @param userId 用户id
     * @param deleteAll 是否删除全部标志位 true为删除全部 false为删除指定订单
     * @return
     */
    @RequestMapping(value = "/deleteProduct",method = RequestMethod.POST)
    public QueryResponseResult deleteProduct(Integer productState , Integer[] id , String userId , Boolean deleteAll){
        orderService.deleteProduct(productState,userId,id,deleteAll);
        return new QueryResponseResult(CommonCode.SUCCESS,null);
    }


    /**
     *  删除订单
     * @param orderId 商品id
     * @param userId 用户id
     * @return
     */
    @RequestMapping(value = "/deleteOrder",method = RequestMethod.POST)
    public QueryResponseResult deleteOrder(String orderId , String userId ){
        orderService.deleteOrder(userId,orderId);
        return new QueryResponseResult(CommonCode.SUCCESS,null);
    }
}
