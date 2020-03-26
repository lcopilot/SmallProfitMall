package cn.itcast.messageQueue.producer.shoppingCart;

import cn.itcast.domain.favorite.Evaluation;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShoppingCartProducer {

    @Autowired
    RabbitTemplate shoppingCartTemplate;    //注入发消息模板

    public void sendDeleteCart(String type,int[] cartIdLis){
        String prefix = "user.";
        try {
            int[] msgString = cartIdLis;
            shoppingCartTemplate.convertAndSend("SHOPPING-CART-EXCHANGE", prefix + type, msgString);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
