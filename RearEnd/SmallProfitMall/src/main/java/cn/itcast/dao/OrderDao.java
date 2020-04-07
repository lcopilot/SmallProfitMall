package cn.itcast.dao;

import cn.itcast.domain.address.Address;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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
     * 查询指定订单信息详情
     * @param userId
     * @param orderId
     * @return
     */
    public Order findDetailedOrder(@Param("userId")String userId , @Param("orderId")String orderId);

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
     * 查询订单总总计
     * @param userId 用户id
     * @param orderId 订单id
     * @return 订单总计
     */
    public String fenOrderTotal(@Param("userId") String userId,@Param("orderId")String orderId);

    /**
     * 查询商品信息
     * @param orderId
     * @return
     */
    public List<ProductContent> fendOrderProduct(@Param("orderId") String orderId);

    /**
     * 添加订单地址
     * @param address 地址对象
     * @return 是否提交成功
     */
    public Integer addOrdeAddress(@Param("orderId") String orderId,@Param("address") Address address);

    /**
     * 查询当天最后一条记录的订单号
     * @return
     */
    public String findSerialnumber();



}
