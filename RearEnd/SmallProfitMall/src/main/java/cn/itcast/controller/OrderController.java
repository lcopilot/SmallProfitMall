package cn.itcast.controller;

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
     * 订单
     * @return
     */
    @RequestMapping(value = "/addOrder" ,method = RequestMethod.POST)
    public QueryResponseResult addOrder(String userId ,Integer[] shoppingCartId) throws IOException {
        String result = orderService.addOrder(userId,shoppingCartId);
        QueryResult queryResult=new QueryResult();
        queryResult.setList(Collections.singletonList(result));
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }
}
