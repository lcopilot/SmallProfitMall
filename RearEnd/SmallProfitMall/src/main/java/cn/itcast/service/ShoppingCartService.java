package cn.itcast.service;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import org.apache.ibatis.annotations.Param;


import java.util.List;


public interface ShoppingCartService {

    //添加到购物车
    public int addShoppingCar(PurchaseInformation purchaseInformation);

    //根据uid查询购物车
    public List<ShoppingCart> findByUserId(String userId);

    //根据id删除
    public Integer deleteCart(int shoppingCartId);

    //根据用户id查询购物车商品数量
    public Integer findByuId(String userId);


}
