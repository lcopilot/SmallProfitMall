package cn.itcast.util;

import org.junit.Test;
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
    public Date AddTwoTours(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss");//格式化输出日期
        Date now = new Date();
        long time = 60*1000*60*2;//60秒
        date = new Date(now .getTime() + time);//2小时后秒后的时间
      //  Date beforeDate = new Date(now .getTime() - time);//60秒前的时间System.out.println(sdf.format(afterDate ));
        return date;
    }

    //获取两小时后的时间戳
    public long timestamp() throws ParseException {
        Date date = new Date();
       int a= getHour(date);
       return twoHours(a);
    }
    //获得当前小时
    public int getHour(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(Calendar.HOUR_OF_DAY);
    }
    //传入当前时间(小时) 返回时间戳时间
    public long twoHours(int hour) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");//格式化输出日期
        Date date = new Date();
        String  r =sdf.format(date);
        Date c = null;
        long ts =0;
        System.out.println();
        int a = 0;
        switch(hour) {
            case 0:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/02 00:00");
                ts = c.getTime();
            break;
            case 1:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/02 00:00");
                System.out.println(c);
                ts = c.getTime();
            break;
            case 2:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/04 00:00");
                ts = c.getTime();
                break;
            case 3:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/04 00:00");
                ts = c.getTime();
                break;
            case 4:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/06 00:00");
                ts = c.getTime();
                break;
            case 5:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/06 00:00");
                ts = c.getTime();
                break;
            case 6:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/08 00:00");
                ts = c.getTime();
                break;
            case 7:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/08 00:00");
                ts = c.getTime();
                break;
            case 8:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/10 00:00");
                ts = c.getTime();
                break;
            case 9:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/10 00:00");
                ts = c.getTime();
                break;
            case 10:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/12 00:00");
                ts = c.getTime();
                break;
            case 11:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/12 00:00");
                ts = c.getTime();
                break;
            case 12:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/14 00:00");
                ts = c.getTime();
                break;
            case 13:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/14 00:00");
                ts = c.getTime();
                break;
            case 14:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/16 00:00");
                ts = c.getTime();
                break;
            case 15:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/16 00:00");
                ts = c.getTime();
                break;
            case 16:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/18 00:00");
                ts = c.getTime();
                break;
            case 17:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/18 00:00");
                ts = c.getTime();
                break;
            case 18:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/20 00:00");
                ts = c.getTime();
                break;
            case 19:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/20 00:00");
                ts = c.getTime();
                break;
            case 20:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/22 00:00");
                ts = c.getTime();
                break;
            case 21:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/22 00:00");
                ts = c.getTime();
                break;
            case 22:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/00 00:00");
                ts = c.getTime();
                break;
            case 23:
                c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r + "/00 00:00");
                ts = c.getTime();
                break;
        }
        return ts;
    }
}
