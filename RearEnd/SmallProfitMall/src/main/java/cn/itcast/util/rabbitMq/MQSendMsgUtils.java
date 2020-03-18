package cn.itcast.util.rabbitMq;
import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rabbitmq.client.Connection;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * MQ发送消息公用工具类
 * <p>
 * MQ发送消息模式采用 通配符模式
 * order.* 区配一个词
 * order.# 区配一个或者多个词
 * <p>
 *
 * @author gblfy
 */
@Component
@Slf4j
public class MQSendMsgUtils {

    //格式化时间
    public static final DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");// 日期格式


    @Autowired//注入发送消息模板
    RabbitTemplate rabbitTemplate;
    public  void sendMsg(String content,String type,String userEmail) {
        String prefix="user.";

        try {
            Map<String, Object> msg = new HashMap<String, Object>();
            msg.put("content", content);
            msg.put("userEmail",userEmail);
            msg.put("routingKey", prefix+type);
            msg.put("currentDate", dateFormat.format(new Date()));
            String msgString = JSON.toJSONString(msg);
            rabbitTemplate.convertAndSend("EMAIL-EXCHANGE",prefix+type,msgString);
            //rabbitTemplate.convertAndSend("EMAIL-EXCHANGE",prefix+key,mag);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

