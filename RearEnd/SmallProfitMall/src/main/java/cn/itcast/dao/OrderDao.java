package cn.itcast.dao;

import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import org.apache.ibatis.annotations.Param;

/**
 * 订单
 * @author Kite
 * @date 2020/4/2
 */
public interface OrderDao {
    /**
     * 新增订单
     * @param order 订单对象
     * @return 新增是否成功结果
     */
    public Integer addOrder(Order order);

    /**
     * 查询订单
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    public Order findOrder(@Param("userId")String userId , @Param("orderId")String orderId);

    /**
     * 新增订单商品
     * @param productContent
     * @return
     */
    public Integer addProductContent(ProductContent productContent);

    /**
     * 确认订单
     * @param order 订单对象
     * @return 是否成功
     */
    public Integer confirmOrder(Order order);
    /**
     * 查询当天最后一条记录的订单号
     * @return
     */
    public String findSerialnumber();



}
