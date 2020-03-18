package cn.itcast.controller;

import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.EmailService;
import cn.itcast.service.UserService;
import cn.itcast.util.Emiail.SendEmailUtil;
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
    QueryResult result;

    @Autowired
    EmailService emailService;

    @Autowired
    SendEmailUtil sendEmailUtil;

    @Autowired
    UserService userService;

    //发送邮箱验证码（绑定,修改）
    @RequestMapping(value = "/relieveEmail",method = RequestMethod.POST )
    public QueryResponseResult sendEmail(String email,String uId ,HttpSession session) {
        String userEmail=email;
        String verification = GetFourRandom.getFourRandom();
        String theme = "微利商城";
        String sendEmail = "liliu_muge@163.com";
        if(userEmail==null){
            userEmail = emailService.fendByIdEmail(uId);
        }
        String content = verification;
        int redis = sendEmailUtil.sendEmailUtil(theme, sendEmail, userEmail, content);
        if (redis == 0) {
            session.setAttribute("content", content);//设置验证码session
            sessionUtil.removeAttrbute(session, "content");//倒计时删除session
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }
        return new QueryResponseResult(CommonCode.FAIL, null);
    }

    //更新邮箱
    @RequestMapping(value = "/updateEmail",method = RequestMethod.POST)
    public QueryResponseResult updateEmail(String userId, String verification, String email, HttpSession session) {
        String Verify = (String) session.getAttribute("content");
        System.out.println(verification);
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
    public QueryResponseResult updateEmailPhone(String userId, HttpSession session) throws ClientException {
        String phone = userService.findByIdPhone(userId);
        String FR = GetFourRandom.getFourRandom();  //随机验证码
        System.out.println(phone);
        System.out.println("修改验证码为 " + FR);
        boolean flag = SmsUtils.updatePhone(phone, FR);
        if (flag) {
            session.setAttribute("updateEmailPhoneFR", FR);//存入验证码session
            session.setAttribute("updateEmailPhone", phone);//手机号存入session
            sessionUtil.removeAttrbute(session, "passwordVerify");
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        } else {
            return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
        }
    }

    /**
     * 验证手机是否成功
     *
     * @param
     * @param session
     * @return
     */
    @RequestMapping(value = "/PhoneSucceed", method = RequestMethod.POST)
    public QueryResponseResult updateFormerPhone(String verification, HttpSession session) {
        String updateEmailPhoneFR = (String) session.getAttribute("updateEmailPhoneFR");
        String updateEmailPhone = (String) session.getAttribute("updateEmailPhone");
        session.invalidate();
        if (verification.equals(updateEmailPhoneFR)) {
            List Phone = new ArrayList();
            Phone.add(updateEmailPhone);
            result.setList(Phone);
            return new QueryResponseResult(CommonCode.SUCCESS, result);
        } else {
            return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
        }
    }


}
