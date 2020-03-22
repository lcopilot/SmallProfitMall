package cn.itcast.service;

import cn.itcast.domain.shoppingCar.ShoppingCar;
import org.springframework.stereotype.Service;


public interface ShoppingCartService {
    //添加到购物车
    public int addShoppingCar(ShoppingCar shoppingCar);
}
