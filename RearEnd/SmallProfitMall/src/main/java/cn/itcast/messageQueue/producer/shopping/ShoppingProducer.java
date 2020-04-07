package cn.itcast.messageQueue.producer.shopping;

import cn.itcast.domain.order.Order;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShoppingProducer {

    /**发消息key前缀**/
    public static final String prefix= "user.";

    /**注入发消息模板**/
    @Autowired
    RabbitTemplate shoppingTemplate;

    /**
     * 用于发送到货通知邮件，购买商品邮件
     * @param type  要发送的消息队列
     * @param smg   smg[0]用户的邮件地址 smg[1]邮件内容
     */
    public void sendShoppingInformation (String type,String[] smg){
        try {
            shoppingTemplate.convertAndSend("SHOPPING-EXCHANGE", prefix + type, smg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 用于推送消息
     * @param type 要发送的消息队列
     * @param order 订单对象
     */
    public void  sendShoppingInformation(String type,Order order){
        try {
            shoppingTemplate.convertAndSend("SHOPPING-EXCHANGE", prefix + type, order);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
