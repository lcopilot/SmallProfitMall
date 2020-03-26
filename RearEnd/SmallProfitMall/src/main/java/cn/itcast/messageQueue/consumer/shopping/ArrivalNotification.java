package cn.itcast.messageQueue.consumer.shopping;


import cn.itcast.util.Emiail.SendEmailUtil;
import org.springframework.beans.factory.annotation.Autowired;

public class ArrivalNotification {
    @Autowired
    SendEmailUtil sendEmailUtil;

    public void arrivalNotification(String[] strings){
        String theme="到货通知";
        String sendEmail = "liliu_muge@163.com";
        String userEmail=strings[0];
        String content = strings[1];
        sendEmailUtil.sendEmailUtil(theme,sendEmail,userEmail,content);
        System.out.println("-----商品有货发送邮件成功-------");
    }
}
