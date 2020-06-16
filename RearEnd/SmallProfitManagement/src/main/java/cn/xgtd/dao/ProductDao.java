package cn.xgtd.dao;

import cn.xgtd.domain.product.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 商品持久层
 * @author Kite
 * @date 2020/6/6
 */
@Mapper
public interface ProductDao {


    /**
     * 查询商品总数量
     * @return
     */
    public Integer findFavoriteQuantity();

    /**
     * 查询商品详细信息
     * @return
     */
    public List<ProductDetails> fendProduct(@Param("start") Integer start,@Param("pageSize") Integer pageSize);


    /**
     * 查询商品属性
     * @param productId
     * @return
     */
    public List<ProductDistinction> findProductDistinction(@Param("productId")Integer productId);

    /**
     * 查询商品库存跟销量
     * @param productId 商品id
     * @return
     */
    public ProductDetails findSalesInventory(@Param("productId")Integer productId);

    /**
     * 查询商品分类
     * @return
     */
    public List<ProductCategory> findCategory();

    /**
     * 添加商品信息
     * @param productDetails 商品对象
     * @return
     */
    public Integer addProduct(ProductDetails productDetails);

    /**
     * 添加商品图片
     * @param productImage 图片集合
     * @return
     */
    public Integer addProductImage(List<ProductImage> productImage);

    /**
     * 添加商品属性
     * @param productContexts 商品属性对象
     * @return
     */
    public Integer addProductContext(List<ProductContext> productContexts);

    /**
     * 查询所有商品属性种类
     * @return
     */
    public List<AttributeType> findAttributeType();


    /**
     * 查询添加商品的配置
      * @param productId 商品id
     * @return
     */
    public List<ProductContext> findProductAttribute(Integer productId);
}
