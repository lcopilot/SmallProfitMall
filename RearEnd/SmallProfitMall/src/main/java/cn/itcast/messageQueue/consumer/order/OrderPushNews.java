package cn.itcast.messageQueue.consumer.order;

import cn.itcast.dao.MemberDao;
import cn.itcast.dao.NewsDao;
import cn.itcast.dao.OrderDao;
import cn.itcast.domain.member.ConsumptionRecords;
import cn.itcast.domain.news.News;
import cn.itcast.domain.order.Order;
import cn.itcast.service.NewsService;
import cn.itcast.service.OrderService;
import cn.itcast.service.UserService;
import com.alibaba.fastjson.JSONObject;
import lombok.SneakyThrows;
import org.springframework.amqp.rabbit.listener.exception.ListenerExecutionFailedException;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 订单消息消费者
 * @author Kite
 * @date 2020/4/7
 */
public class OrderPushNews{

    /**订单业务层**/
    @Autowired
    OrderService orderService;

    /**用户业务层**/
    @Autowired
    UserService userService;

    /**
     * 推送消息
     * @param orderJson 推送内容对象
     * @throws IOException
     * @throws IOException
     */
    public void orderPushNews(JSONObject orderJson) throws IOException {
        Order orders = JSONObject.toJavaObject(orderJson, Order.class);
        orderService.push(orders);
    }

    /**
     * 推送未读消息数量
     * @param userId
     * @throws IOException
     */
    public void pushNewsQuantity(String userId) throws IOException {
        userService.pushNews(userId);
    }
}
