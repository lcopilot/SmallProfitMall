package cn.itcast.service.impl;

import cn.itcast.dao.EmailDao;
import cn.itcast.service.EmailService;
import cn.itcast.util.rabbitMq.MQSendMsgUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {
    @Autowired
    EmailDao emailDao;
    @Autowired
    MQSendMsgUtils mqSendMsgUtils;
    //发送邮箱验证码
    @Override
    public int sendEmail(String email,String verification) {
        String type="email";
        mqSendMsgUtils.sendMsg("绑验证码为"+verification,type,email);
        return 0;
    }

    //跟新邮箱方法
    @Override
    public int addEmail(String uid, String email) {
        return emailDao.addEmail(uid,email);
    }

    //查询用户是否有邮箱
    @Override
    public String fendByIdEmail(String uid) {
        return emailDao.fendByIdEmail(uid);
    }
}
