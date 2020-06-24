package cn.xgtd.messageQueue.producer.arrivalNotice;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 到货通知
 * @author Kite
 * @date 2020/6/24
 */
@Component
public class ArrivalNoticeMq {
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
            shoppingTemplate.convertAndSend("ARRIVAL-NOTICE-EXCHANGE", prefix + type, smg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
