package cn.xgtd.service;

import cn.xgtd.domain.homePage.Sales;

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
}
