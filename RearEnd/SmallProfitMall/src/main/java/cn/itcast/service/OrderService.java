package cn.itcast.service;

import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.PurchaseInformation;

/**
 * @author Kite
 * @date 2020/4/3
 */
public interface OrderService {
    /**
     * 添加订单
     * @param userId 用户id
     * @param shoppingCartId 购物车id
     * @return
     */
    public String addOrder(PurchaseInformation purchaseInformation,String userId, Integer[] shoppingCartId);

}
