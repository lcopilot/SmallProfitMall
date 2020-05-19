package cn.itcast.dao;

import cn.itcast.domain.address.Address;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.response.QueryResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.sql.Array;
import java.util.Arrays;
import java.util.Date;
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
     * 查询全部订单跟未支付订单
     * @param userId 用户id
     * @param orderState 订单状态 0为查所有订单 1为查询待付款订单 2为查询待收货订单 3为待评价订单 4为退货
     * @return
     */
    public List<Order> findAllOrder(@Param("userId")String userId , @Param("orderState")Integer orderState,
                                    @Param("start")Integer start,@Param("pageSize") Integer pageSize);

    /**
     * 查询已待发货 待收货 待评价订单
     * @param userId 用户id
     * @param productState  1为查询已付款商品  2为查询确认收货后的商品
     * @param start 开始查询数
     * @param pageSize 每页查询数量
     * @return 1 未待发货 2 待收货 3为已签收
     */
    public List<ProductContent> findOrderProduct(@Param("userId")String userId ,@Param("productState")Integer productState, @Param("start")Integer start,@Param("pageSize") Integer pageSize);

    /**
     * 新增订单商品
     * @param productContent
     * @return
     */
    public Integer addProductContent(ProductContent productContent);

    /**
     * 测试批量添加
     * @param productContents
     * @return
     */
    public Integer addListProduct(List<ProductContent> productContents);

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

    /**
     * 修改订单
     * @return
     */
    public Integer updateOrder(Order order);


    /**
     * 查询修改次数
     * @param userId 用户id
     * @param orderId 订单id
     * @return 修改次数
     */
    public Integer findChangeQuantity(@Param("userId")String userId,@Param("orderId")String orderId);


    /**
     * 支付成功 修改支付状态 支付时间
     * @param userId 用户id
     * @param orderId 订单id
     * @param orderState 订单状态
     * @param paymentTime 订单时间
     * @return 影响行数
     */
    public Integer updateOrderPayState(@Param("userId")String userId,@Param("orderId")String orderId,@Param("orderState")Integer orderState,@Param("paymentTime") Date paymentTime);

    /**
     * 修改订单状态方法
     * @param userId 用户id
     * @param orderId 订单id
     * @param orderState 订单状态
     * @return
     */
    public Integer updateOrderState(@Param("userId")String userId,@Param("orderId")String orderId,@Param("orderState")Integer orderState);

    /**
     * 查询订单总数量
     * @param userId 用户id
     * @return 订单总数量
     */
    public Integer fendOrderQuantity(@Param("userId")String userId,@Param("orderState")Integer orderState);

    /**
     *  查询不同商品状态数量
     * @param userId 用户id
     * @param productState 商品状态
     * @return 数量
     */
    public Integer findProductQuantity(@Param("userId")String userId,@Param("productState")Integer productState);


    /**
     * 删除订单
     * @param userId 用户id
     * @param orderId 订单id
     */
    public Integer deleteOrder(@Param("userId")String userId, @Param("orderId") String orderId);

    /**
     * 删除商品
     * @param productState 品状态
     * @param userId 用户id
     * @param id 商品id
     * @param deleteAll 删除标志位 true为删除全部 false为删除指定订单
     * @return
     */
    public Integer deleteProduct(@Param("productState") Integer productState ,@Param("userId")String userId, @Param("id")Integer[] id,@Param("deleteAll")Boolean deleteAll);

    /**
     * 修改商品状态
     * @param orderId 订单id
     * @param productState 订单状态
     * @param purchaseId 购买编号 为空则修改该订单全部状态
     * @return
     */
    Integer updateProductState(@Param("orderId") String orderId ,@Param("productState")Integer productState,@Param("purchaseId")Integer purchaseId);

    /**
     * 查询商品id 跟商品购买数量
     * @param purchaseId
     * @return
     */
    ProductContent findPurchase(@Param("purchaseId")Integer purchaseId);
}
