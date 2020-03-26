package cn.itcast.messageQueue.producer.favorite;

import cn.itcast.domain.favorite.Evaluation;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FavoriteProducer {


    @Autowired//注入发送消息模板
    RabbitTemplate favoriteTemplate;

    public void sendFavorite(String type, Evaluation evaluation) {
        String prefix = "user.";

        try {
            Evaluation msgString = evaluation;
            favoriteTemplate.convertAndSend("FAVORITE-EXCHANGE", prefix + type, msgString);
            //rabbitTemplate.convertAndSend("EMAIL-EXCHANGE",prefix+key,mag);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
