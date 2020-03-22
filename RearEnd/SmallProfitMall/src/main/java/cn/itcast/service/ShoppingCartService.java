package cn.itcast.service;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;


public interface ShoppingCartService {
    //添加到购物车
    public int addShoppingCar(PurchaseInformation purchaseInformation);
}
