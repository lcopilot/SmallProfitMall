package cn.itcast.util.logic;

import javax.servlet.http.HttpSession;
import java.util.Timer;
import java.util.TimerTask;

public class sessionUtil {
    //删除session
    public static void removeAttrbute(HttpSession session, String codeName) {
        System.out.println("开始倒计时五分钟");
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                // 删除session中存的验证码
                session.removeAttribute(codeName);
                System.out.println("删除成功");
            }
            //设置时间为五分钟
        }, 10*1000*3000);
    }

}
