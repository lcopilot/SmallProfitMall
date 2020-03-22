package cn.itcast.dao;

import cn.itcast.domain.shoppingCar.ShoppingCar;

public interface ShoppingCartDao {
    //添加到购物车
    public int addShoppingCar(ShoppingCar shoppingCar);
}
