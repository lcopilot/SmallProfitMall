package cn.itcast.service.impl;

import cn.itcast.dao.EmailDao;
import cn.itcast.dao.UserDao;
import cn.itcast.service.EmailService;
import cn.itcast.util.Emiail.SendEmailUtil;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.logic.GetFourRandom;
import cn.itcast.util.rabbitMq.MQSendMsgUtils;
import cn.itcast.util.redis.RedisUtil;
import cn.itcast.util.user.SmsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 86185
 */
@Service
public class EmailServiceImpl implements EmailService {

    public static final String theme = "微利商城";
    public static final String sendEmail = "liliu_muge@163.com";

    /**成功代码**/
    public static final Integer SUCCEED= 10001;
    /**失败代码**/
    public static final Integer FAILURE= 20001;
    /**失败代码 用户已存在**/
    public static final Integer FAILURE_REPETITION= 20002;
    /**失败代码 验证码不正确**/
    public static final Integer INVALID_PARAM= 20003;
    /**短信发送失败*/
    public static final Integer SERVER_ERROR=20004;

    /**发送邮件工具类**/
    @Autowired
    SendEmailUtil sendEmailUtil;

    /**注入缓存工具类**/
    @Autowired
    private RedisUtil redisUtil;

    /**用户**/
    @Autowired
    UserDao userDao;

    @Autowired
    EmailDao emailDao;

    @Autowired
    MQSendMsgUtils mqSendMsgUtils;

    /**
     *
     * @param email 需要绑定的邮箱
     * @param uId 用户id
     * @param key 缓存前缀
     * @return
     * @throws Exception
     */
    @Override
    public Integer bindingEmail(String email, String uId,String key) throws Exception {
        //解密邮箱
        String emails = AesEncryptUtil.desEncrypt(email);
        //获取随机码
        String verification = GetFourRandom.getFourRandom();
        //解密后的用户邮箱
        String userEmail=emails;
        if(email==null){
            userEmail =emailDao.fendByIdEmail(uId);
        }
        String content = verification;
        int redis = sendEmailUtil.sendEmailUtil(theme, sendEmail, userEmail, content);
        if (redis == 0) {
            redisUtil.set(key+"_"+email,verification,300);
            return SUCCEED;
        }
        return FAILURE;
    }

    /**
     * 更新邮箱
     * @param userId 用户id
     * @param verification 验证码
     * @param email 需要更新为的邮箱
     * @return
     */
    @Override
    public Integer updateEmail(String userId, String verification, String email,String key) {
        //查询数据库该用户邮箱
        String emails = emailDao.fendEmail(email);
        if(emails!=null){
            return FAILURE_REPETITION;
        }
        String Verify = (String) redisUtil.get(key+"_"+email);

        if (verification.equals(Verify)) {
            int redis =emailDao.addEmail(userId,email);
            if (redis == 1) {
                //删除缓存验证码
                redisUtil.del(key+"_"+email);
                return SUCCEED;
            }
            return FAILURE;
        }
        return INVALID_PARAM;
    }

    /**
     * 更改邮箱发送验证
     * @param userId 用户id
     * @param verificationType 修改方式
     * @return 修改方式为手机 则返回手机号 修改方式为邮箱 则返回邮箱 失败返回失败代码
     */
    @Override
    public String updateEmailPhone(String userId, String verificationType,String key) throws Exception {
        //验证方式为手机
        String phoneType="1";
        //验证方式为手机
        String emailType="2";
        //随机验证码
        String FR = GetFourRandom.getFourRandom();
        System.out.println(FR);
        //手机号码方式
        if (phoneType.equals(verificationType)){
            //查询需要修改的手机号
            String phone =  userDao.findByIdPhone(userId);
            //解密手机发送短信
            String phones = AesEncryptUtil.desEncrypt(phone);
            boolean flag = SmsUtils.updatePhone(phones, FR);
            //发送是否成功
            if (flag) {
                redisUtil.set(key+"_"+phone,FR,300);
                return phones;
            } else {
                return SERVER_ERROR+"";
            }
            //邮箱验证
        }else if(emailType.equals(verificationType)){
            //生成随机验证码
            String verification = GetFourRandom.getFourRandom();
            //查询绑定邮箱
            String userEmail =emailDao.fendByIdEmail(userId);
            //解密邮箱
            String Emails=AesEncryptUtil.desEncrypt(userEmail);
            int redis=7;
            //用户绑定邮箱则直接发送验证码
            if (userEmail!=null){
                redis = sendEmailUtil.sendEmailUtil(theme, sendEmail, Emails, verification);
            }
            //发送验证码成功 存入缓存
            if (redis == 0) {
                redisUtil.set(key+"_"+userEmail,verification,300);
                return userEmail;
            }
            return FAILURE+"";
        }
        return FAILURE+"";
    }

    /**
     *
     * @param verification 验证码
     * @param account 账号
     * @param userId 用户id
     * @param verificationType 修改方式
     * @param validationFunctions 验证种类
     * @return
     */
    @Override
    public Integer verification(String verification, String account, String userId,
                                String verificationType, String validationFunctions,String key) throws Exception {
        //验证方式为手机
        String phoneType="1";
        //验证方式为邮箱
        String emailType="2";
        //验证种类为解绑邮箱
        String relieve="3";
        if (phoneType.equals(verificationType)){
            account=AesEncryptUtil.encrypt(account);
        }
        String contents = (String) redisUtil.get(key+"_"+account);
        if (contents != null && verification.equals(contents)) {
            if (validationFunctions != null) {
                //解绑
                if (relieve.equals(validationFunctions)) {
                    int redis = emailDao.addEmail(userId, null);
                    if (redis == 1) {
                        //验证成功删除缓存验证码
                        redisUtil.del(key+"_"+account);
                        //解绑成功
                        return SUCCEED;

                    } else {
                        return FAILURE;
                    }
                }
            }
            //验证成功删除缓存验证码
            redisUtil.del(key+"_"+account);
            return SUCCEED;
        } else {
            return INVALID_PARAM;
        }
    }

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
