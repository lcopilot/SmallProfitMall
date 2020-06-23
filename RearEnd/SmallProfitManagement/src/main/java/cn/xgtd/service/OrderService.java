package cn.xgtd.service;

import cn.xgtd.domain.order.Order;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/24
 */
public interface OrderService {

    /**
     * 查询所有订单
     * @param currentPage 开始页
     * @param pageSize 每页查询数量
     * @return 订单对象
     */
    public List<Order> findAllOrder(Integer currentPage , Integer pageSize);

    /**
     * 查询商品总页数 总数量
     * @param pageSize 每页查询数量
     * @return
     */
    public Integer[] fendTotalPage(Integer pageSize) ;
}
