package cn.itcast.util.Emiail;

import cn.itcast.util.rabbitMq.MQSendMsgUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;


import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;

@Component("sendEmailUtil")
public class SendEmailUtil {
    @Autowired
    MQSendMsgUtils mqSendMsgUtils;
    @Autowired
    private JavaMailSender javaMailSender;//在spring中配置的邮件发送的bean

    /**
     *
     * @param theme         邮件的主题
     * @param sendEmail     发件人邮箱
     * @param userEmail     收件人邮箱
     * @param content       邮件的文本内容，
     * @return
     */
    public  int sendEmailUtil(String theme,String sendEmail,String userEmail,String content)  {
        int verification=0;
        MimeMessage mMessage=javaMailSender.createMimeMessage();//创建邮件对象
                MimeMessageHelper mMessageHelper;
            //从配置文件中拿到发件人邮箱地址
        try {
            mMessageHelper=new MimeMessageHelper(mMessage,true);
            mMessageHelper.setFrom (new InternetAddress(sendEmail, "微利团队", "UTF-8"));
            mMessageHelper.setTo(userEmail);
            mMessageHelper.setSubject(theme);
            mMessageHelper.setText(content,true);//true表示文本以html格式打开
            javaMailSender.send(mMessage);//发送邮件
        } catch (MessagingException | UnsupportedEncodingException e) {
        }
        System.out.println(verification);
        return verification;
    }
}
