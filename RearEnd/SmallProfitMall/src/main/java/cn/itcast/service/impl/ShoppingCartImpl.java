package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.dao.ShoppingCartDao;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import cn.itcast.service.ShoppingCartService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ShoppingCartImpl implements ShoppingCartService {

    @Autowired
    private ShoppingCartDao shoppingCartDao;

    @Autowired
    private ShoppingCart shoppingCart;

    @Autowired
    private ProductDetailsDao productDetailsDao;
    //添加购物车
    @Override
    public int[] addShoppingCar(PurchaseInformation purchaseInformation) {
        List<ShoppingCart> shoppingCarts = this.findByUserId(purchaseInformation.getUserId());
        String productDeploy = "";
        if (purchaseInformation.getColour()!=null){           //颜色
            productDeploy = productDeploy+purchaseInformation.getColour()+" ";
        }
        if (purchaseInformation.getCombo()!=null){           //套餐
            productDeploy = productDeploy+purchaseInformation.getCombo()+" ";
        }
        if (purchaseInformation.getKind()!=null){         //种类
            productDeploy = productDeploy+purchaseInformation.getKind()+" ";
        }
        if (purchaseInformation.getSize()!=null){         //尺寸
            productDeploy = productDeploy+purchaseInformation.getSize()+" ";
        }
        if (purchaseInformation.getVersion()!=null){      //版本
            productDeploy = productDeploy+purchaseInformation.getVersion()+" ";
        }
        if(purchaseInformation.getTaste()!=null){         //口味
            productDeploy = productDeploy+purchaseInformation.getTaste()+" ";
        }
        if(purchaseInformation.getSpecification()!=null){ //规格
            productDeploy = productDeploy+purchaseInformation.getSpecification()+" ";
        }
        for (ShoppingCart shoppingCart : shoppingCarts){
            if(purchaseInformation.getProductId()==shoppingCart.getProductId() && shoppingCart.getProductDeploy().equals(productDeploy)){
                int quantity=shoppingCart.getQuantity()+purchaseInformation.getQuantity();
                int ShoppingCartId = shoppingCart.getShoppingCartId();
                int redis = shoppingCartDao.updateQuantity(quantity,ShoppingCartId);
                int[] rediss = new int[2];
                rediss[0]=redis;
                rediss[1]=shoppingCarts.size();
                return rediss;
            }
        }
        //根据ic查询价格
        PurchaseInformation purchaseInformation1 =  shoppingCartDao.findByPid(purchaseInformation.getProductId());//数据库取商品价格名字
        shoppingCart.setProductName(purchaseInformation1.getProductName());     //设置商品名字
        shoppingCart.setProductPrice(purchaseInformation1.getProductPrice());   //设置商品价格
        shoppingCart.setProductInventory(purchaseInformation1.getProductInventory());   //设置库存
        shoppingCart.setProductId(purchaseInformation.getProductId());                //设置商品id
        shoppingCart.setQuantity(purchaseInformation.getQuantity());            //设置购买数量
        shoppingCart.setUserId(purchaseInformation.getUserId());                //设置用户id


        shoppingCart.setProductDeploy(productDeploy);
        int redis = shoppingCartDao.addShoppingCar(shoppingCart);
        int[] rediss = new int[2];
        rediss[0]=redis;
        rediss[1]=shoppingCarts.size()+1;
        return rediss;
    }

    //查询购物车
    public List<ShoppingCart> findByUserId(String userId){
        List<ShoppingCart> shoppingCart = shoppingCartDao.findByUserId(userId);
        for (int i = 0; i <shoppingCart.size() ; i++) {
            String a=shoppingCart.get(i).getUserId();
            int c=shoppingCart.get(i).getProductId();
            String redis="";
                redis = shoppingCartDao.findByUidEvaluation(shoppingCart.get(i).getUserId(),shoppingCart.get(i).getProductId());
             if (redis!=null){
                 if (redis.equals("true")){
                     shoppingCart.get(i).setEvaluation(true);
                 }
             }else {
                 shoppingCart.get(i).setEvaluation(false);
                 continue;
             }
        }
        return shoppingCart;
    }

    //根据shoppingCartId删除购物车
    @Override
    public Integer deleteCart(int[] cartIdList) {
        int redis=0;
        for (int shoppingCartId : cartIdList){
           redis = shoppingCartDao.deleteCart(shoppingCartId);
        }
        return redis;
    }

    @Override
    public ArrayList findByuId(String userId) {
        return (ArrayList) shoppingCartDao.findByuId(userId);
    }


}
