package cn.itcast.controller;

import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
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
    /**
     * 订单
     * @return
     */
    @RequestMapping("/Order/{userId}/{News}")
    public QueryResponseResult Order(@PathVariable("userId") String userId,@PathVariable("News")String News) throws IOException {
       // webSocket.sendMessage(userId,News);
        return  new QueryResponseResult(CommonCode.SUCCESS,null);
    }
}
