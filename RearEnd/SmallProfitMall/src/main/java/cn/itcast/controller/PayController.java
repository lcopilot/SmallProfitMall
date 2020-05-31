package cn.itcast.controller;


import cn.itcast.domain.order.Order;
import cn.itcast.service.OrderService;
import cn.itcast.skd.AlipayConfig;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.OrderItem;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.request.AlipayTradeRefundRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import static com.alipay.api.AlipayConstants.SIGN_TYPE;

/**
 * @author Kite
 * @date 2020/4/14
 */

@Controller
@RequestMapping("/PayController")
@ResponseBody
public class PayController {

    @Autowired
    OrderService orderService;

    /**
     * 接收支付宝返回通知
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/payNotify")
    public void payNotify(HttpServletRequest request,  HttpServletResponse response) throws Exception {
        // 获取支付宝POST过来反馈信息
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext(); ) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }
        // 调用SDK验证签名
        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset,
                AlipayConfig.sign_type);
        // 验证成功
        if (signVerified) {
            // 商户订单号
            String orderId = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");
            Order order = orderService.findDetailedOrder(null,orderId);
            Integer integer = orderService.updateOrders(order);

            response.sendRedirect("https://www.smallprofit.fhxasdsada.xyz/orderComplete");
        } else {

        }
    }




    @RequestMapping("/payReturn")
    public String payReturn(HttpServletRequest request) throws Exception {

        // 获取支付宝GET过来反馈信息

        Map<String, String> params = new HashMap<String, String>();

        Map<String, String[]> requestParams = request.getParameterMap();

        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext(); ) {

            String name = (String) iter.next();

            String[] values = (String[]) requestParams.get(name);

            String valueStr = "";

            for (int i = 0; i < values.length; i++) {

                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";

            }

            // 乱码解决，这段代码在出现乱码时使用

            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");

            params.put(name, valueStr);

        }

        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset,
                AlipayConfig.sign_type); // 调用SDK验证签名
        // ——请在这里编写您的程序（以下代码仅作参考）——

        if (signVerified) {

            // 商户订单号

            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");


            // 支付宝交易号

            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

            // 付款金额

            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"), "UTF-8");


            return "trade_no:" + trade_no + "<br/>out_trade_no:" + out_trade_no + "<br/>total_amount:" + total_amount;


        } else {

            return "验签失败";

        }

    }



}


