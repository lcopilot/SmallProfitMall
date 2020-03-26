package cn.itcast.messageQueue.consumer.shoppingCart;

import cn.itcast.dao.ShoppingCartDao;
import org.springframework.beans.factory.annotation.Autowired;

public class ShoppingCartConsumer {
    @Autowired
    ShoppingCartDao shoppingCartDao;

    public void deleteCart(int[] cartIdList){
        for (int shoppingCartId : cartIdList){
         shoppingCartDao.deleteCart(shoppingCartId);
        }
        System.out.println("-----删除购物车商品成功-------");
    }
}
