package cn.xgtd.service;

import cn.xgtd.domain.homePage.PayRecord;
import cn.xgtd.domain.homePage.Sales;
import cn.xgtd.domain.homePage.SalesDate;
import cn.xgtd.domain.homePage.SalesRanking;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/28
 */
public interface SalesService {

    /**
     * 查询销售额
     * @return
     */
    public Sales findSales();

    /**
     *  查询商品销量排行榜
     * @param quantity 查询数量
     * @return
     */
    public List<SalesRanking> findSalesRanking(Integer quantity);

    /**
     * 查询当前销售分析
     * @param gran 类型
     * @param startDate
     * @param endDate
     * @return
     */
    public List<SalesDate> findSalesDate(String gran, String startDate , String endDate );

    /**
     * 查询商品支付记录
     * @return
     */
    public PayRecord findPayRecord();
}
