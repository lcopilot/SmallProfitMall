package cn.itcast.controller;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
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

    /**
     * 购物车订单结束
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
    public QueryResponseResult purchaseOrder(PurchaseInformation purchaseInformation) throws IOException {
        String result = orderService.purchaseOrder(purchaseInformation);
        QueryResult queryResult=new QueryResult();
        queryResult.setList(Collections.singletonList(result));
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }
}
