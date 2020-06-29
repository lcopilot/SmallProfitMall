package cn.xgtd.util.baidu;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @author  ziyingguixin@163.com
 * @date 2018/9/28 11:03
 */
public class CycleUtil {

    private static final Logger log = LoggerFactory.getLogger(CycleUtil.class);

    /**
     * 计算两个时间是否为同一周期
     * @param d1 时间1
     * @param d2 时间2
     * @param type 周期类型
     * @return
     */
    public static Boolean sameCycle(Date d1,Date d2,int type){
        CycleEnum cycle = CycleEnum.getCycle(type);
        if(cycle.equals(CycleEnum.YEAR)){
            return isSameYear(d1,d2);
        }else if(cycle.equals(CycleEnum.MONTH)){
            return isSameMonth(d1,d2);
        }else if(cycle.equals(CycleEnum.WEEK)){
            return isSameWeek(d1,d2);
        }else if(cycle.equals(CycleEnum.DAY)){
            return isSameDate(d1,d2);
        }
        return false;
    }
    /**
     * 同一年
     * @param date1
     * @param date2
     * @return
     */
    public static Boolean isSameYear(Date date1,Date date2){
        Calendar cal1 = Calendar.getInstance();
        cal1.setTime(date1);
        Calendar cal2 = Calendar.getInstance();
        cal2.setTime(date2);
        boolean isSameYear = cal1.get(Calendar.YEAR) == cal2.get(Calendar.YEAR);
        return isSameYear;
    }
    /**
     * 同一月
     * @param date1
     * @param date2
     * @return
     */
    public static Boolean isSameMonth(Date date1,Date date2){
        if(!isSameYear(date1,date2)){
            return false;
        }
        Calendar cal1 = Calendar.getInstance();
        cal1.setTime(date1);
        Calendar cal2 = Calendar.getInstance();
        cal2.setTime(date2);
        boolean isSameMonth = cal1.get(Calendar.MONTH) == cal2.get(Calendar.MONTH);
        return isSameMonth;
    }

    /**
     * 同一周
     * @param date1
     * @param date2
     * @return
     */
    public static Boolean isSameWeek(Date date1,Date date2){
        Calendar cal1 = Calendar.getInstance();
        Calendar cal2 = Calendar.getInstance();
        //西方周日为一周的第一天，咱得将周一设为一周第一天
        cal1.setFirstDayOfWeek(Calendar.MONDAY);
        cal1.setTime(date1);
        cal2.setTime(date2);
        if (cal1.get(Calendar.WEEK_OF_YEAR) == cal2.get(Calendar.WEEK_OF_YEAR))
            return true;
        return false;
    }

    /**
     * 同一天
     * @param date1
     * @param date2
     * @return
     */
    public static Boolean isSameDate(Date date1,Date date2){
        if(!isSameMonth(date1,date2)){
            return false;
        }
        Calendar cal1 = Calendar.getInstance();
        cal1.setTime(date1);
        Calendar cal2 = Calendar.getInstance();
        cal2.setTime(date2);
        boolean isSameDate = cal1.get(Calendar.DAY_OF_MONTH) == cal2.get(Calendar.DAY_OF_MONTH);
        return isSameDate;
    }
}

