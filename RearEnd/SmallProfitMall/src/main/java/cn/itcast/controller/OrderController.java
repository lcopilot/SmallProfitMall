package cn.itcast.controller;

import cn.itcast.domain.accountSettings.AccountSettings;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.response.faceRecognition.FaceRecognition;
import cn.itcast.response.faceRecognition.FaceRecognitionResponse;
import cn.itcast.response.queryOrder.QueryOrder;
import cn.itcast.response.queryOrder.ResultOrder;
import cn.itcast.service.AccountSettingsService;
import cn.itcast.service.OrderService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
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
     * @return
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
     * 验证支付密码
     * @param userId 用户id
     * @param faceRecognition 用户支付密码
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/verificationPay",method = RequestMethod.POST)
    public QueryResponseResult verificationPay(String userId,String faceRecognition) throws Exception {
        if (userId==null||faceRecognition==null){
            return new QueryResponseResult(CommonCode.INVALID_PARAM,null);
        }
        Boolean result = orderService.verificationPay(userId,faceRecognition);
        if (result){
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     * 人脸上传
     * @param image 用户人图片
     * @param userId 用户id
     * @param videoFile 视频流
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/verificationFace",method = RequestMethod.POST)
    public FaceRecognitionResponse verificationFace(String image, String userId , MultipartFile videoFile) throws Exception {
        //视频是否存在
        InputStream videoFiles = null;
        if(videoFile!=null){
            videoFiles=videoFile.getInputStream();
        }
        String result =orderService.verificationFace(image,userId,videoFiles);
        if (RESULT.equals(result)){
            return new FaceRecognitionResponse(CommonCode.SUCCESS, null);
        }
        FaceRecognition faceRecognition=new FaceRecognition();
        faceRecognition.setResult((JSONObject) JSON.parse(result));
        return new FaceRecognitionResponse(CommonCode.FAIL, faceRecognition);
    }
}
