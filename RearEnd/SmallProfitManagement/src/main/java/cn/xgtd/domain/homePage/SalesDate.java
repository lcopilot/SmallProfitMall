package cn.xgtd.domain.homePage;

import java.util.Date;


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
    private DataDate dataDate;

    /**时间段**/
    private Date date;
    /**今日金额**/
    private Double daySale;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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

    public Double getDaySale() {
        return daySale;
    }

    public void setDaySale(Double daySale) {
        this.daySale = daySale;
    }

    public DataDate getDataDate() {
        return dataDate;
    }

    public void setDataDate(DataDate dataDate) {
        this.dataDate = dataDate;
    }
}
