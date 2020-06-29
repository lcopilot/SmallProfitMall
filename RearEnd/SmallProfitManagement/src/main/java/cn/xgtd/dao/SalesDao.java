package cn.xgtd.dao;

import cn.xgtd.domain.homePage.PayRecord;
import cn.xgtd.domain.homePage.Sales;
import cn.xgtd.domain.homePage.SalesDate;
import cn.xgtd.domain.homePage.SalesRanking;

import java.util.Date;
import java.util.List;

/**
 * 销售额持久层
 * @author Kite
 * @date 2020/6/28
 */
public interface SalesDao {
    /**
     * 查询总销售额
     * @return
     */
    public Double findTotalSales();


    /**
     * 查询本周销售额
     * @return
     */
    public Double findWeekSales();

    /**
     * 查询上周销售额
     * @return
     */
    public Double findLastWeekSales();

    /**
     * 查询今天昨天的销售额
     * @param date 0为今天 1为昨天
     * @return
     */
    public Double findTodaySales(Integer date);


    /**
     * 查询商品销量排行
     * @param quantity
     * @return
     */
    public List<SalesRanking> findSalesRanking(Integer quantity );

    /**
     * 查询支付记录
     * @return
     */
    public List<PayRecord> findPayRecord();

    /**
     * 查询支付数量
     * @return
     */
    public Integer findPayQuantity();

    /**
     * 当天销售数据
     * @param day
     * @return
     */
    public List<SalesDate> findSalesDate(String day);

    /**
     * 查询某个小时
     * @param date
     * @return
     */
    public Double findHourTotal(Date date);
}
