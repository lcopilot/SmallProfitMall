package cn.xgtd.dao;

import cn.xgtd.domain.homePage.*;
import org.apache.ibatis.annotations.Param;

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
    public  List<SalesDate> findSalesDate(String day);

    /**
     * 查询某个小时
     * @param date
     * @return
     */
    public Double findHourTotal(Date date);

    /**
     * 按范围查询数据
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @return
     */
    public List<SalesDate> findMonth(@Param("startDate") String startDate ,@Param("endDate") String endDate );

    /**
     * 查询种类销售总额和
     * @param CategoryId 种类id
     * @return
     */
    public Double findSalesCategoryTotal(Integer CategoryId);

    /**
     * 查询所有分类销售额
     * @return
     */
    public List<SalesCategory> findAllCategory();


}
