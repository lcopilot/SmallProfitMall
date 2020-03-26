package cn.itcast.controller;

import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.EmailService;
import cn.itcast.service.UserService;
import cn.itcast.util.Emiail.SendEmailUtil;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.logic.GetFourRandom;
import cn.itcast.util.logic.sessionUtil;
import cn.itcast.util.user.SmsUtils;
import com.aliyuncs.exceptions.ClientException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/EmailController")
@ResponseBody
public class EmailController {

    @Autowired
    EmailService emailService;

    @Autowired
    SendEmailUtil sendEmailUtil;

    @Autowired
    UserService userService;

    String theme = "微利商城";
    String sendEmail = "liliu_muge@163.com";

    /**
     * 发送邮箱验证码（绑定邮箱）
     * @param email     发送邮箱
     * @param uId       用户id
     * @param session
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/relieveEmail",method = RequestMethod.POST )
    public QueryResponseResult sendEmail(String email,String uId ,HttpSession session) throws Exception {
        //解密邮箱
        String emails = AesEncryptUtil.desEncrypt(email);
        String verification = GetFourRandom.getFourRandom();
        String userEmail=emails;
        if(userEmail==null){
            userEmail = emailService.fendByIdEmail(uId);
        }
        String content = verification;
        int redis = sendEmailUtil.sendEmailUtil(theme, sendEmail, userEmail, content);
        if (redis == 0) {
            //设置验证码session
            session.setAttribute("content", content);
            //倒计时删除session
            sessionUtil.removeAttrbute(session, "content");
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }
        return new QueryResponseResult(CommonCode.FAIL, null);
    }

    /**
     * 跟新邮箱
     * @param userId
     * @param verification
     * @param email
     * @param session
     * @return
     */
    @RequestMapping(value = "/updateEmail",method = RequestMethod.POST)
    public QueryResponseResult updateEmail(String userId, String verification, String email, HttpSession session) {
        if(emailService.fendEmail(email)!=null){
            return new QueryResponseResult(CommonCode.FALL_USER_REGISTER, null);
        }
        String Verify = (String) session.getAttribute("content");
        session.invalidate();
        if (verification.equals(Verify)) {
            int redis = emailService.addEmail(userId, email);
            if (redis == 1) {
                return new QueryResponseResult(CommonCode.SUCCESS, null);
            }
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
    }

    /**
     * 验证新手机更改邮箱短信验证(用户解绑邮箱,更新邮箱)
     */
    @RequestMapping(value = "/updateEmailPhone", method = RequestMethod.POST)
    public QueryResponseResult updateEmailPhone(String userId,String verificationType, HttpSession session) throws Exception {
        QueryResult result = new QueryResult();
        String phone = userService.findByIdPhone(userId);
        String FR = GetFourRandom.getFourRandom();  //随机验证码
        System.out.println(FR);
        session.setAttribute("verificationType", verificationType);//验证是否
        if (verificationType.equals("1")){    //手机号码方式
            String phones = AesEncryptUtil.desEncrypt(phone);//解密手机发送短信
            boolean flag = SmsUtils.updatePhone(phones, FR);
            if (flag) {
                session.setAttribute("updateEmailPhoneFR", FR);//存入验证码session
                session.setAttribute("updateEmailPhone", phone);//手机号存入session
                sessionUtil.removeAttrbute(session, "passwordVerify");//倒计时销毁
                List Phone = new ArrayList();
                Phone.add(phone);
                result.setList(Phone);
                return new QueryResponseResult(CommonCode.SUCCESS, result);
            } else {
                return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
            }
        }else if(verificationType.equals("2")){   //邮箱验证
            String verification = GetFourRandom.getFourRandom();
            String userEmail = emailService.fendByIdEmail(userId);  //查询绑定邮箱
            String Emails=AesEncryptUtil.desEncrypt(userEmail);
            int redis=7;
            if (userEmail!=null){
                redis = sendEmailUtil.sendEmailUtil(theme, sendEmail, Emails, verification);
            }
            if (redis == 0) {
                session.setAttribute("content", verification);//设置验证码session
                session.setAttribute("Email", userEmail);//手机号存入session
                sessionUtil.removeAttrbute(session, "content");//倒计时删除session
                List Email = new ArrayList();
                Email.add(userEmail);
                result.setList(Email);
                return new QueryResponseResult(CommonCode.SUCCESS, result);
            }
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        return new QueryResponseResult(CommonCode.FAIL, null);
    }

    /**
     * 验证是否成功
     *
     * @param
     * @param session
     * @return
     */
    @RequestMapping(value = "/PhoneSucceed", method = RequestMethod.POST)
    public QueryResponseResult updateFormerPhone(String verification,String account,String userId,String verificationType,String validationFunctions, HttpSession session) {
        String verificationTypes = (String) session.getAttribute("verificationType");//验证方式
        String updateEmailPhoneFR = (String) session.getAttribute("updateEmailPhoneFR");//手机验证码
        String updateEmailPhone = (String) session.getAttribute("updateEmailPhone");//手机号码
        String content = (String) session.getAttribute("content");//邮件验证码
        String Email = (String) session.getAttribute("Email");//邮件
        session.invalidate();
    if (!verificationTypes.equals(verificationType)){
        return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
    }
        if(verificationTypes.equals("1")){//手机验证
            if (verification.equals(updateEmailPhoneFR)&&account.equals(updateEmailPhone)) {
                if (validationFunctions!=null){
                    if (validationFunctions.equals("3")){   //解绑
                        int redis = emailService.addEmail(userId, null);
                        if(redis==1){
                            return new QueryResponseResult(CommonCode.SUCCESS,null);//解绑成功
                        }else {
                            return new QueryResponseResult(CommonCode.SERVER_ERROR,null);
                        }
                    }
                }
                return new QueryResponseResult(CommonCode.SUCCESS,null);
            } else {
                return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
            }
        }else if (verificationTypes.equals("2")){//邮箱验证
            if (verification.equals(content)&&account.equals(Email)) {
                if (validationFunctions!=null){
                    if (validationFunctions.equals("3")){   //解绑
                        int redis = emailService.addEmail(userId, null);
                        if(redis==1){
                            return new QueryResponseResult(CommonCode.SUCCESS,null);//解绑成功
                        }else {
                            return new QueryResponseResult(CommonCode.SERVER_ERROR,null);
                        }
                    }
                }
                return new QueryResponseResult(CommonCode.SUCCESS,null);
            } else {
                return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
            }
        }
        return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
    }



}
