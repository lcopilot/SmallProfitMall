package cn.itcast.util;


import org.springframework.stereotype.Controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

@Controller("timeUtil")
public class TimeUtil {
    private static final String FORMAT_FULL = null;

    //当前时间增加两个小时
    public static Date AddTwoTours(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss");//格式化输出日期
        Date now = new Date();
        long time = 60*1000*60*2;//60秒
        date = new Date(now .getTime() + time);//2小时后秒后的时间
      //  Date beforeDate = new Date(now .getTime() - time);//60秒前的时间System.out.println(sdf.format(afterDate ));
        return date;
    }

    //获取偶数小时间戳
    public static long timestamp() throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");//格式化输出日期
        Date date = new Date();
        int hour =getHour(date);//获取小时
        String  r =sdf.format(date);
        int h =0;
        if(hour%2 != 0)
            h= hour+1;
        else{
            h= hour+2;
        }
        long ts =0;
        Date c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/"+h+" 00:00");

        ts = c.getTime();
        return ts;
    }
    //获得当前小时
    public static int getHour(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(Calendar.HOUR_OF_DAY);
    }
}
