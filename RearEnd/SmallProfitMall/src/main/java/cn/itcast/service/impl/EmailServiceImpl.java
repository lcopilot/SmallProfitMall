package cn.itcast.service.impl;

import cn.itcast.dao.EmailDao;
import cn.itcast.service.EmailService;
import cn.itcast.util.rabbitMq.MQSendMsgUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class EmailServiceImpl implements EmailService {
    @Autowired
    EmailDao emailDao;
    @Autowired
    MQSendMsgUtils mqSendMsgUtils;
//    //发送邮箱验证码
//    @Override
//    public int sendEmail(String email,String verification) {
//        String type="email";
//        mqSendMsgUtils.sendMsg("绑验证码为"+verification,type,email);
//        return 0;
//    }
    /**
     * 跟新邮箱方法
     * @param uid 用户id
     * @param email 新邮箱
     * @return 是否成功
     */

    @Override
    public int addEmail(String uid, String email) {
        return emailDao.addEmail(uid,email);
    }

    /**
     * 查询用户是否有邮箱
     * @param uid
     * @return
     */
    @Override
    public String fendByIdEmail(String uid) {
        return emailDao.fendByIdEmail(uid);
    }

    /**
     * 查询用户是否存在
     * @param email
     * @return
     */
    @Override
    public String fendEmail(String email) {
        return emailDao.fendEmail(email);
    }
}
