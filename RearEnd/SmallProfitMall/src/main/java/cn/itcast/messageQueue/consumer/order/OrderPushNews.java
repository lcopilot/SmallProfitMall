package cn.itcast.messageQueue.consumer.order;

import cn.itcast.dao.MemberDao;
import cn.itcast.dao.NewsDao;
import cn.itcast.dao.OrderDao;
import cn.itcast.domain.member.ConsumptionRecords;
import cn.itcast.domain.news.News;
import cn.itcast.domain.order.Order;
import cn.itcast.service.NewsService;
import cn.itcast.service.OrderService;
import com.alibaba.fastjson.JSONObject;
import lombok.SneakyThrows;
import org.springframework.amqp.rabbit.listener.exception.ListenerExecutionFailedException;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Kite
 * @date 2020/4/7
 */
public class OrderPushNews {

    /**注入订单dao**/
    @Autowired
    OrderDao orderDao;

    /**注入消息dao**/
    @Autowired
    NewsDao newsDao;

    /**注入消息service**/
    @Autowired
    NewsService newsService;

    /**订单service**/
    @Autowired
    OrderService orderService;


    @Autowired
    MemberDao memberDao;

    public void orderPushNews(JSONObject orderJson) throws IOException {
        Order orders = JSONObject.toJavaObject(orderJson, Order.class);
                orderService.push(orders);

    }
}
