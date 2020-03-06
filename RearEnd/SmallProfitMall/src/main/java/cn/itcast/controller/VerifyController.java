package cn.itcast.controller;

import cn.itcast.constant.Constant;
import cn.itcast.domain.validation.SecondVerify;
import cn.itcast.skd.Vaptcha;
import com.vaptcha.domain.HttpResp;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/verifyController")
public class VerifyController {
    private Vaptcha vaptcha = Vaptcha.getInstance(Constant.SecretKey, Constant.Vid, Constant.Scene);
    /**
     * 二次验证接口
     */
    public Boolean VaptchaVerify(com.vaptcha.domain.Verify verify, HttpServletRequest request) {

        String token = verify.getToken();
        SecondVerify result = vaptcha.Verify(request, token);
        if (result.getSuccess() == Constant.VerifySuccess) {
            // 二次验证成功
            // 执行后续逻辑 比如:登录 注册
            return true;
        } else {
            // 二次验证失败
            // 前端重新人机验证
            return false;
        }
    }
}
