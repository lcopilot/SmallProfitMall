package cn.itcast.dao;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;

public interface ShoppingCartDao {
    //添加到购物车
    public int addShoppingCar(ShoppingCart shoppingCar);

    //根据pid查询商品价格跟名字
    public PurchaseInformation findByPid(int productId);
}
