package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.dao.ShoppingCartDao;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;

import cn.itcast.messageQueue.producer.shopping.ShoppingProducer;
import cn.itcast.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Service
public class ShoppingCartImpl implements ShoppingCartService {

    @Autowired
    private ShoppingCartDao shoppingCartDao;

    @Autowired
    private ProductDetailsDao productDetailsDao;

    @Autowired
    private ShoppingProducer shoppingProducer;

    /**
     * 添加购物车
     * @param purchaseInformation
     * @return rediss[0]结果状态 rediss[1]购物车商品数量
     */
    @Override
    public int[] addShoppingCar(PurchaseInformation purchaseInformation) {
        ShoppingCart shoppingCart = new ShoppingCart();
        List<ShoppingCart> shoppingCarts = this.findByUserId(purchaseInformation.getUserId());
        //购物车大于99返回
        if (shoppingCarts.size()==99|| shoppingCarts.size()>99){
            int redis = 2;
            int[] rediss = new int[2];
            rediss[0]=redis;
            rediss[1]=shoppingCarts.size();
            return rediss;
        }
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
        for (ShoppingCart shoppingCartss : shoppingCarts){
            if(purchaseInformation.getProductId()==shoppingCartss.getProductId() && shoppingCartss.getProductDeploy().equals(productDeploy)){
                int quantity=shoppingCartss.getQuantity()+purchaseInformation.getQuantity();
                int[] rediss = new int[2];
                //单个数量是否大于99
                if (quantity>99){
                    //返回是否更改
                    rediss[0]=3;
                    //购物车数量
                    rediss[1]=shoppingCarts.size();
                    return rediss;
                }
                int ShoppingCartId = shoppingCartss.getShoppingCartId();
                int redis = shoppingCartDao.updateQuantity(quantity,ShoppingCartId);

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

    /**
     * 查询购物车
     * @param userId    用户id
     * @return      购物车商品信息集合
     */
    @Override
    public List<ShoppingCart> findByUserId(String userId){
        List<ShoppingCart> shoppingCartss = shoppingCartDao.findByUserId(userId);
        for (int i = 0; i <shoppingCartss.size() ; i++) {
            int productId=shoppingCartss.get(i).getProductId();
            //用户是否有到货通知
            List<String> strings = shoppingCartDao.findArrivalNotice(userId,productId);
            if (strings == null||strings.size()==0) {
                //查询没有到货通知设置为false
                shoppingCartss.get(i).setNotice(false);
            }else {
                //查询有到货通知设置为true
                shoppingCartss.get(i).setNotice(true);
            }

            //判断是否收藏
            String  redis = shoppingCartDao.findByUidEvaluation(userId,productId);
             if (redis!=null){
                 //查询有收藏置为true
                 if ("true".equals(redis)){
                     shoppingCartss.get(i).setEvaluation(true);
                 }
             }else {
                 shoppingCartss.get(i).setEvaluation(false);
                 continue;
             }
        }
        return shoppingCartss;
    }

    /**
     * 删除购物车
     * @param cartIdList
     * @return
     */
    @Override
    public Integer deleteCart(int[] cartIdList) {
        int redis=0;
        for (int shoppingCartId : cartIdList){
           redis = shoppingCartDao.deleteCart(shoppingCartId);
        }
        return redis;
    }

    /**
     * 查询购物车数量
     * @param userId
     * @return
     */
    @Override
    public Integer findByuId(String userId) {
        return  shoppingCartDao.findByuId(userId);
    }

    /**
     * 添加到货通知
     * @param userId    用户id
     * @param productId 商品id
     * @return
     */
    @Override
    public int addArrivalNotice(String userId, int productId) {
        return shoppingCartDao.addArrivalNotice(userId,productId);
    }

    /**
     * 修改单个商品数量
     * @param quantity
     * @param shoppingCartId
     * @return
     */
    @Override
    public int updateQuantity(int quantity, int shoppingCartId) {
        return shoppingCartDao.updateQuantity(quantity,shoppingCartId);
    }

    /**
     * 查询购物车预览商品
     * @param userId    用户id
     * @param End   查询条数
     * @return
     */
    @Override
    public List<ShoppingCart> findPreview(String userId, Integer End) {
        List<ShoppingCart> findPreview = shoppingCartDao.findPreview(userId,0,End);
        return findPreview;
    }


}
