package cn.itcast.dao;


import cn.itcast.domain.ProductDatails.ProductAttributes;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import org.apache.ibatis.annotations.Param;

//商品详细
public interface ProductDetailsDao {
    /**
     * 查询商品详细信息
     * @param userId
     * @return
     */
    public ProductDetailsResult fendProduct(@Param("userId")Integer userId);

    /**
     * 查询该商品属性是否存在
     * @param productId
     * @return
     */
    public ProductAttributes fendAttributes(@Param("productId") Integer productId);

}