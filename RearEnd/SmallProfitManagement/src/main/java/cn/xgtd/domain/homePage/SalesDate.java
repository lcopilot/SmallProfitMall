package cn.xgtd.domain.homePage;

import javax.xml.crypto.Data;
import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.Timer;

/**
 * @author Kite
 * @date 2020/6/29
 */
public class SalesDate {
    /**时间段**/
    private String hour;
    /**数据内容**/
    private Integer count;

    /**日期访问量数据**/
    private List dataDate;


    public List getDataDate() {
        return dataDate;
    }

    public void setDataDate(List dataDate) {
        this.dataDate = dataDate;
    }



    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
