package cn.itcast.skd;

import cn.itcast.constant.Constant;
import cn.itcast.domain.verification.SecondVerify;
import cn.itcast.util.Common;
import cn.itcast.util.HttpClientUtil;


import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;


import com.google.gson.Gson;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class Vaptcha {

    // 验证单元key
    private String SecretKey;
    // 验证单元id
    private String Vid;
    // 场景值
    private String Scene;

    private Vaptcha() {
    }

    private Vaptcha(String secretKey, String vid, String scene) {
        SecretKey = secretKey;
        Vid = vid;
        Scene = scene;
    }

    /**
     * 二次验证
     *
     * @param request
     * @param token mode(7)+knock(32)+uuid(32)
     */
    public SecondVerify Verify(HttpServletRequest request, String token) {
        if (token.length() < 7) {
            return new SecondVerify(Constant.VerifyFail, "验证失败", 0);
        }
            // 正常模式
            String ipAddress = Common.GetIpAddress(request);
            return Verify(ipAddress, token);

    }
    private static volatile Vaptcha vaptcha;
    public static Vaptcha getInstance(String secretKey, String vid, String scene) {
        if (vaptcha == null) {
            synchronized (Vaptcha.class) {
                if (vaptcha == null) {
                    vaptcha = new Vaptcha(secretKey, vid, scene);
                }
            }
        }
        return vaptcha;
    }

    /**
     * 正常模式二次校验
     *
     * @param token 前端回传token
     * @param ip    用户ip
     */
    private SecondVerify Verify(String ip, String token) {
        List<NameValuePair> parametersBody = new ArrayList<>();
        parametersBody.add(new BasicNameValuePair("id", this.Vid));
        parametersBody.add(new BasicNameValuePair("secretkey", this.SecretKey));
        parametersBody.add(new BasicNameValuePair("scene", this.Scene));
        parametersBody.add(new BasicNameValuePair("ip", ip));
        parametersBody.add(new BasicNameValuePair("token", token));
        try {
            String result = HttpClientUtil.postForm(Constant.VerifyUrl, parametersBody);
            Gson gson = new Gson();
            return gson.fromJson(result, SecondVerify.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new SecondVerify();
    }
}
