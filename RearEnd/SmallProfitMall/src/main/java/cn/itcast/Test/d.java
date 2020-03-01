package cn.itcast.Test;

import org.junit.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class d {
    private static final String FORMAT_FULL = null;

    public static void main(String[] args) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss");//格式化输出日期
        long timeStamp = System.currentTimeMillis();
        System.currentTimeMillis();
        Date date = new Date();

        System.out.println(sdf.format(date));

        System.out.println();
        if(getHour(date)==11){
            System.out.println("加油！武汉");
            Long startTs = System.currentTimeMillis();
            System.out.println(startTs);
        }
        int a = 0;
        switch(1){
            case 0:
              a  = 3;
                break;
            case 5:

            break;
        }
        System.out.println(a);


    }
    public static int getHour(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(Calendar.HOUR_OF_DAY);
    }

    @Test
    public void f() throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");//格式化输出日期
        Date date = new Date();
        String  r =sdf.format(date);
        System.out.println();
        Date c = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss").parse(r+"/12 00:00");
        long ts = c.getTime();
        System.out.println(c);
        System.out.println(ts);
    }
}
