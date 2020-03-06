package cn.itcast.util;

import cn.itcast.constant.Constant;

import cn.itcast.skd.Vaptcha;
import com.vaptcha.domain.SecondVerify;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
@Controller("verifyUtil")
public class VerifyUtil {
    private Vaptcha vaptcha = Vaptcha.getInstance(Constant.SecretKey, Constant.Vid, Constant.Scene);
    /**
     * 二次验证接口
     */
    public  Boolean VaptchaVerify(String tokens, HttpServletRequest request) {

        String token = tokens;
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