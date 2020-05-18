package cn.itcast.dao;


import cn.itcast.domain.ProductDatails.ProductAttributes;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

/**
 * 商品详细
 * @author kity
 */
public interface ProductDetailsDao {
    /**
     * 查询商品详细信息
     * @productId productId
     * @return
     */
    public ProductDetailsResult fendProduct(@Param("productId")Integer productId);

    /**
     * 查询该商品属性是否存在
     * @param productId
     * @return
     */
    public ProductAttributes fendAttributes(@Param("productId") Integer productId);

    /**
     * 查询单个商品图片
     * @param productId
     * @return
     */
    public String findProductImage(@Param("productId")Integer productId);

    /**
     * 查询单个商品价格
     * @param productId 商品id
     * @return 商品价格
     */
    public Double findProductPrice(@Param("productId")Integer productId);

    /**
     * 新增商品访问量
     * @return
     */
    public Integer updateProductPageviews(@Param("productId")Integer productId);



}