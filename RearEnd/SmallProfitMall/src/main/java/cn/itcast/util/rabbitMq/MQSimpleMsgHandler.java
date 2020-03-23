package cn.itcast.util.rabbitMq;

import cn.itcast.util.Emiail.SendEmailUtil;
import com.alibaba.fastjson.JSON;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.Map;


public class MQSimpleMsgHandler {

    private static final ObjectMapper MAPPER = new ObjectMapper();
    @Autowired
    SendEmailUtil sendEmailUtil;
    String theme="微利商城";//主题
    String sendEmail="liliu_muge@163.com";//发件人
    /**
     * 接收MQ消息
     * @param msg
     */
    public void execute(String msg) throws IOException {
        Map map = JSON.parseObject(msg, Map.class);
        String userEmail = (String) map.get("userEmail");
        String routingKey = (String) map.get("routingKey");
        String content = (String)map.get("content");
        String currentDate =(String) map.get("currentDate");
        sendEmailUtil.sendEmailUtil(theme,sendEmail,userEmail,content);//发送邮件
        System.out.println("------------------发送邮件---------------------------------");
    }
}
