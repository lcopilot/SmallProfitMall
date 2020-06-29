package cn.xgtd.domain.homePage;

import java.util.Date;
import java.util.List;

/**
 * 返回结果
 * @author Kite
 * @date 2020/6/29
 */
public class PayRecord {
    /**支付数量**/
    private Integer dayPayQuantity;
    /**日期**/
    private Date date;

    /**日期访问量数据**/
    private List dataDate;


    public List getDataDate() {
        return dataDate;
    }

    public void setDataDate(List dataDate) {
        this.dataDate = dataDate;
    }

    public Integer getDayPayQuantity() {
        return dayPayQuantity;
    }

    public void setDayPayQuantity(Integer dayPayQuantity) {
        this.dayPayQuantity = dayPayQuantity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
