package cn.itcast.Test.mq;

import lombok.extern.slf4j.Slf4j;


public class sms {
    /**
     * 接收MQ消息
     * @param msg
     */
    public void sms(String msg) {
        System.out.println("---------------------sms------------------------------");
        System.out.println(msg);
    }
}
