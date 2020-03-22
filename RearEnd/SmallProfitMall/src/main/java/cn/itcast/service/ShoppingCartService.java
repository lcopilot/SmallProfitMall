package cn.itcast.service;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;


import java.util.List;


public interface ShoppingCartService {
    //添加到购物车
    public int addShoppingCar(PurchaseInformation purchaseInformation);
    //根据uid查询购物车
    public List<ShoppingCart> findByUserId(String userId);
}
