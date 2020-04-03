package cn.itcast.dao;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCartDao {
    /**
     * 添加到购物车
     * @param shoppingCar 购物车对象
     * @return
     */
    public int addShoppingCar(ShoppingCart shoppingCar);

    /**
     * 查询商品价格跟名字
     * @param productId 商品id
     * @return
     */
    public PurchaseInformation findByPid(int productId);

    /**
     * 查询购物车
     * @param userId 用户id
     * @param shoppingCartId 购物车id
     * @return
     */
    public List<ShoppingCart> findShoppingCart(@Param("userId")String userId ,@Param("shoppingCartId")Integer shoppingCartId);

    /**
     * 查询用户是否收藏
     * @param userId 用户id
     * @param productId 商品id
     * @return
     */
    public  String  findByUidEvaluation(@Param("userId")String userId,@Param("productId")int productId);

    /**
     * 删除购物车
     * @param shoppingCartId 购物车id
     * @return
     */
    public Integer deleteCart(@Param("shoppingCartId")Integer shoppingCartId);

    /**
     * /询购物车商品数量
     * @param userId 用户id
     * @return
     */
    public Integer findByuId(String userId);

    /**
     * 修改购物车商品数量
     * @param quantity
     * @param shoppingCartId
     * @return
     */
    public int updateQuantity(@Param("quantity")int quantity,@Param("shoppingCartId")int shoppingCartId);

    /**
     * 查询到货通知
     * @param userId 用户id
     * @param productId 商品id
     * @return
     */
    public List<String> findArrivalNotice(@Param("userId")String userId,@Param("productId")int productId);

    /**
     * 添加到货通知
     * @param userId
     * @param productId
     * @return
     */
    public int addArrivalNotice(@Param("userId")String userId,@Param("productId")int productId);


    /**
     * 查询预览购物车
     * @param userId   用户id
     * @param Start 查询开始值
     * @param End   查询的数量
     * @return
     */
    public List<ShoppingCart> findPreview(@Param("userId")String userId,@Param("Start") Integer Start,@Param("End") Integer End);
}
