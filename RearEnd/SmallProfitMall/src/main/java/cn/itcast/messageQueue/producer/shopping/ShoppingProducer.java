package cn.itcast.messageQueue.producer.shopping;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShoppingProducer {

    @Autowired
    RabbitTemplate shoppingTemplate;    //注入发消息模板

    /**
     * 用于发送到货通知邮件，购买商品邮件
     * @param type  要发送的消息队列
     * @param smg   smg[0]用户的邮件地址 smg[1]邮件内容
     */
    public void sendDeleteCart(String type,String[] smg){
        String prefix = "user.";
        try {
            shoppingTemplate.convertAndSend("SHOPPING-EXCHANGE", prefix + type, smg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
