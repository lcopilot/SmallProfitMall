package cn.itcast.service;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import org.apache.ibatis.annotations.Param;


import java.util.ArrayList;
import java.util.List;


public interface ShoppingCartService {

    //添加到购物车
    public int[] addShoppingCar(PurchaseInformation purchaseInformation);

    /**
     * 查询购物车
     * @param userId    用户id
     * @return          购物车商品数据
     */
    public List<ShoppingCart> findByUserId(String userId);

    /**
     * 删除购物车
     * @param shoppingCartId 购物车id集合
     * @return
     */
    public Integer deleteCart(int[] shoppingCartId);

    /**
     *  查询购物车商品数量
     * @param userId
     * @return
     */
    public Integer findByuId(String userId);

    /**
     * 添加到货通知
     * @param userId    用户id
     * @param productId 商品id
     * @return
     */
    public int addArrivalNotice(String userId,int productId);

    /**
     * 修改购物车商品数量
     * @param quantity
     * @param shoppingCartId
     * @return
     */
    public int updateQuantity(int quantity,int shoppingCartId);

    /**
     *查询预览
     * @param userId
     * @return
     */
    public List<ShoppingCart> findPreview(String userId,Integer End);

    /**
     * 设置商品配置
     * @param purchaseInformation 商品对象
     * @return 商品配置拼接
     */
    public String fenProductDeploy(PurchaseInformation purchaseInformation);

}
