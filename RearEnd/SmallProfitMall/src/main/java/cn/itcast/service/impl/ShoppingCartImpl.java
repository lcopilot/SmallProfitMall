package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.dao.ShoppingCartDao;
import cn.itcast.domain.shoppingCar.ShoppingCar;
import cn.itcast.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingCartImpl implements ShoppingCartService {

    @Autowired
    ShoppingCartDao shoppingCartDao;


    @Autowired
    private ProductDetailsDao productDetailsDao;
    //添加购物车
    @Override
    public int addShoppingCar(ShoppingCar shoppingCar) {

        int redis=shoppingCartDao.addShoppingCar(shoppingCar);
        return redis;
    }
}
