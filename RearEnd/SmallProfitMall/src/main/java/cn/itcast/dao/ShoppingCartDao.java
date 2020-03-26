package cn.itcast.dao;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCartDao {
    //添加到购物车
    public int addShoppingCar(ShoppingCart shoppingCar);

    //根据pid查询商品价格跟名字
    public PurchaseInformation findByPid(int productId);

    //根据uid查询购物车
    public List<ShoppingCart> findByUserId(@Param("userId")String userId);

    //根据uid productId查询用户是否收藏
    public  String  findByUidEvaluation(@Param("userId")String userId,@Param("productId")int productId);

    //根据id删除
    public Integer deleteCart(@Param("shoppingCartId")Integer shoppingCartId);

    //根据用户id查询购物车商品数量
    public List<Integer> findByuId(String userId);

    /**
     * 修改购物车商品数量
     * @param quantity
     * @param shoppingCartId
     * @return
     */
    public int updateQuantity(@Param("quantity")int quantity,@Param("shoppingCartId")int shoppingCartId);

    //查询到货通知
    public List<String> findArrivalNotice(@Param("userId")String userId,@Param("productId")int productId);

    /**
     * 添加到货通知
     * @param userId
     * @param productId
     * @return
     */
    public int addArrivalNotice(@Param("userId")String userId,@Param("productId")int productId);
}
