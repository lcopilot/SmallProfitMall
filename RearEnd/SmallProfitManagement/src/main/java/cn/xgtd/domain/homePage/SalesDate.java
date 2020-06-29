package cn.xgtd.domain.homePage;

import javax.xml.crypto.Data;

/**
 * @author Kite
 * @date 2020/6/29
 */
public class SalesDate {
    /**时间段**/
    private Data hour;
    /**数据内容**/
    private Integer count;
    /**支付金额**/
    private Double totalSales;

    public Double getTotalSales() {
        return totalSales;
    }

    public void setTotalSales(Double totalSales) {
        this.totalSales = totalSales;
    }

    public Data getHour() {
        return hour;
    }

    public void setHour(Data hour) {
        this.hour = hour;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
