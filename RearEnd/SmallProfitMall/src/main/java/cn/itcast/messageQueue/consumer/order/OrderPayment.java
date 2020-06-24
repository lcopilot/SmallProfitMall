package cn.itcast.messageQueue.consumer.order;

import cn.itcast.util.Emiail.SendEmailUtil;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;

/**
 * 购买商品确认订单邮件
 * @author Kite
 * @date 2020/4/6
 */
public class OrderPayment {
    @Autowired
    SendEmailUtil sendEmailUtil;

    public void orderPayment(String[] strings){
        String theme="确认订单通知";
        String sendEmail = "liliu_muge@163.com";
        String userEmail=strings[0];
        String content = strings[1];
        try {
            sendEmailUtil.sendEmailUtil(theme,sendEmail,userEmail,content);
        } catch (Exception e) {
        }
    }
}
