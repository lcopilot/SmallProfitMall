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
import cn.itcast.response.returnString.QueryString;
import cn.itcast.response.returnString.ResultString;
import cn.itcast.service.AccountSettingsService;
import cn.itcast.service.OrderService;
import cn.itcast.skd.AlipayConfig;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;

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
     * 人脸验证
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
     * 提交订单
     * @param order
     * @return
     */
    @RequestMapping(value = "/confirmOrder",method = RequestMethod.POST)
    public QueryString confirmOrder(@RequestBody Order order, HttpServletRequest request) throws Exception {
       String result = orderService.confirmOrder(order,request);
       if (result=="1"){
           return new QueryString(CommonCode.SUCCESS,null);
       }else {
           ResultString resultString = new ResultString();
           resultString.setString(result);
           return new QueryString(CommonCode.SUCCESS,resultString);
       }
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

    //支付宝发送
    public String doPay(String WIDout_trade_no, String WIDtotal_amount, String WIDsubject, String WIDbody, HttpServletRequest request) throws Exception {

        request.setCharacterEncoding("UTF-8");
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(

                AlipayConfig.gatewayUrl,

                AlipayConfig.app_id,

                AlipayConfig.merchant_private_key, "json",

                AlipayConfig.charset,

                AlipayConfig.alipay_public_key,

                AlipayConfig.sign_type);

        //设置请求参数

        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();

        alipayRequest.setReturnUrl(AlipayConfig.return_url);

        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);


        //商户订单号，商户网站订单系统中唯一订单号，必填

        String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"), "UTF-8");

        //付款金额，必填

        String total_amount = new String(request.getParameter("WIDtotal_amount").getBytes("ISO-8859-1"), "UTF-8");

        //订单名称，必填

        String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"), "UTF-8");

        //商品描述，可空

        String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"), "UTF-8");

        alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\","

                + "\"total_amount\":\"" + total_amount + "\","

                + "\"subject\":\"" + subject + "\","

                + "\"body\":\"" + body + "\","

                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明

        //alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","

        //      + "\"total_amount\":\""+ total_amount +"\","

        //      + "\"subject\":\""+ subject +"\","

        //      + "\"body\":\""+ body +"\","

        //      + "\"timeout_express\":\"10m\","

        //      + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节

        //给支付宝发送请求进行支付操作
        String result = alipayClient.pageExecute(alipayRequest).getBody();

        return result;

    }
}
