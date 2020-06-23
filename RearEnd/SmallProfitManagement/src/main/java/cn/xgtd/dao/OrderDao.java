package cn.xgtd.dao;

import cn.xgtd.domain.order.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 订单持久层
 * @author Kite
 * @date 2020/6/24
 */
@Mapper
public interface OrderDao {

    /**
     * 查询所有订单
     * @param start 开始点
     * @param pageSize 每页查询数量
     * @return 订单对象
     */
    public List<Order> findAllOrder(@Param("start") Integer start ,@Param("pageSize") Integer pageSize);

    /**
     * 查询订单数量
     * @return 订单数量
     */
    public Integer fendOrderQuantity();
}
