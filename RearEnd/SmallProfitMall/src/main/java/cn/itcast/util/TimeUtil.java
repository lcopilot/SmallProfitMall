package cn.itcast.util;

import org.junit.Test;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller("timeUtil")
public class TimeUtil {
    //当前时间增加两个小时
    public Date AddTwoTours(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss");//格式化输出日期
        Date now = new Date();
        long time = 60*1000*60*2;//60秒
        date = new Date(now .getTime() + time);//2小时后秒后的时间
      //  Date beforeDate = new Date(now .getTime() - time);//60秒前的时间System.out.println(sdf.format(afterDate ));
        return date;
    }
    @Test
    public void a (){
      //  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss");//格式化输出日期
        Date d = new Date();
        System.out.println(AddTwoTours(d));
    }

}
