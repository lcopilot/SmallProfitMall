package cn.itcast.controller;

import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.EmailService;
import cn.itcast.service.UserService;
import cn.itcast.util.Emiail.SendEmailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

    /**
     * 成功代码
     **/
    public static final Integer SUCCEED = 10001;
    /**
     * 失败代码
     **/
    public static final Integer FAILURE = 20001;
    /**
     * 失败代码 用户已存在
     **/
    public static final Integer FAILURE_REPETITION = 20002;
    /**
     * 失败代码 验证码不正确
     **/
    public static final Integer INVALID_PARAM = 20003;

    /**短信发送失败*/
    public static final Integer SERVER_ERROR=20004;

    //验证方式为手机
    public static final String phoneType = "1";
    //验证方式为邮箱
    public static final String emailType = "2";

    /**
     * 发送邮箱验证码（绑定邮箱）
     *
     * @param email 发送邮箱
     * @param uId   用户id
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/relieveEmail", method = RequestMethod.POST)
    public QueryResponseResult sendEmail(String email, String uId) throws Exception {
        Integer result = emailService.bindingEmail(email, uId, "EmailVerify");
        if (result.equals(SUCCEED)) {
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }
        return new QueryResponseResult(CommonCode.FAIL, null);
    }

    /**
     * 更新邮箱
     *
     * @param userId       用户id
     * @param verification 验证码
     * @param email        用户邮箱
     * @return
     */
    @RequestMapping(value = "/updateEmail", method = RequestMethod.POST)
    public QueryResponseResult updateEmail(String userId, String verification, String email) {
        Integer request = emailService.updateEmail(userId, verification, email, "EmailVerify");
        if (request.equals(FAILURE_REPETITION)) {
            return new QueryResponseResult(CommonCode.FALL_USER_REGISTER, null);
        }
        if (!request.equals(INVALID_PARAM)) {
            if (request.equals(SUCCEED)) {
                return new QueryResponseResult(CommonCode.SUCCESS, null);
            }
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
    }

    /**
     * 验证新手机更改邮箱短信验证(用户解绑邮箱,更新邮箱)
     *
     * @param userId           用户id
     * @param verificationType 验证码方式
     * @return 邮箱验证则返回邮箱 手机验证则返回手机号码
     * @throws Exception
     */
    @RequestMapping(value = "/updateEmailPhone", method = RequestMethod.POST)
    public QueryResponseResult updateEmailPhone(String userId, String verificationType) throws Exception {
        QueryResult queryResult = new QueryResult();
        String request = emailService.updateEmailPhone(userId, verificationType, "EmailVerify");
        if (phoneType.equals(verificationType)) {
            if (!SERVER_ERROR.equals(request)) {
                List Phone = new ArrayList();
                Phone.add(request);
                queryResult.setList(Phone);
                return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
            } else {
                return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
            }
            //邮箱验证
        } else if (emailType.equals(verificationType)) {
            if (!request.equals(FAILURE)) {
                List email = new ArrayList();
                email.add(request);
                queryResult.setList(email);
                return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
            }
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        return new QueryResponseResult(CommonCode.FAIL, null);
    }

    /**
     * 验证是否正确
     *
     * @param verification        验证码
     * @param account             账户
     * @param userId              用户id
     * @param verificationType    验证码方式
     * @param validationFunctions 验证种类 3为解绑邮箱
     * @return
     */
    @RequestMapping(value = "/PhoneSucceed", method = RequestMethod.POST)
    public QueryResponseResult updateFormerPhone(String verification, String account, String userId, String verificationType, String validationFunctions) throws Exception {
        Integer result = emailService.verification(verification, account, userId, verificationType, validationFunctions, "EmailVerify");
        if (result.equals(SUCCEED)) {
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }
        if (result.equals(INVALID_PARAM)) {
            return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
        }
        return new QueryResponseResult(CommonCode.FAIL, null);
    }
}