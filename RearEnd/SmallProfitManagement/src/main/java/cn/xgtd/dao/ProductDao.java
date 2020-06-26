package cn.xgtd.dao;

import cn.xgtd.domain.product.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 商品持久层
 *
 * @author Kite
 * @date 2020/6/6
 */
@Mapper
public interface ProductDao {


    /**
     * 查询商品总数量
     *
     * @return
     */
    public Integer findFavoriteQuantity();

    /**
     * 查询商品详细信息
     *
     * @return
     */
    public List<ProductDetails> fendProduct(@Param("start") Integer start, @Param("pageSize") Integer pageSize);


    /**
     * 查询商品属性
     *
     * @param productId
     * @return
     */
    public List<ProductDistinction> findProductDistinction(@Param("productId") Integer productId);

    /**
     * 查询商品库存跟销量
     *
     * @param productId 商品id
     * @return
     */
    public ProductDetails findSalesInventory(@Param("productId") Integer productId);

    /**
     * 查询商品分类
     *
     * @return
     */
    public List<ProductCategory> findCategory();

    /**
     * 添加商品信息
     *
     * @param productDetails 商品对象
     * @return
     */
    public Integer addProduct(ProductDetails productDetails);

    /**
     * 添加商品展示价格
     * @param productId 商品id
     * @param productPrice 商品价格
     * @return
     */
    public Integer addProductPrice(@Param("productId") Integer productId ,@Param("productPrice") Double productPrice);

    /**
     * 添加商品图片
     *
     * @param productImage 图片集合
     * @return
     */
    public Integer addProductImage(List<ProductImage> productImage);

    /**
     * 添加商品属性
     *
     * @param productContexts 商品属性对象
     * @return
     */
    public Integer addProductContext(List<ProductContext> productContexts);

    /**
     * 查询所有商品属性种类
     *
     * @return
     */
    public List<AttributeType> findAttributeType();

    /**
     * 查询添加商品的配置
     *
     * @param productId 商品id
     * @return
     */
    public List<ProductContext> findProductAttribute(Integer productId);

    /**
     * 添加商品配置组合
     * @param distinctions 配置对象
     * @return
     */
    public Integer addDistinction(List<Distinction> distinctions);

    /**
     * 修改商品配置信息
     *
     * @param distinctions 配置集合
     * @return
     */
    public Integer updateDetails(List<ProductDistinction>  distinctions);

    /**
     * 修改商品基本信息信息
     * @param productDetails 商品对象
     * @return
     */
    public Integer updateProduct(ProductDetails productDetails);

    /**
     * 查询商品配置信息
     * @param productId 商品id
     * @return
     */
    public List<ProductContext> findProductContext(Integer productId);

    /**
     *删除商品配置
     * @return
     */
    public Integer deleteContext(@Param("list") List<ProductContext> productContexts,@Param("productId") Integer productId);
    /**
     * 删除商品配置
     * @param productContexts 配置集合
     * @return
     */
    public Integer deleteDistinction(@Param("list") List<ProductContext> productContexts,@Param("productId") Integer productId);

    /**
     *查询商品图片
     * @param productId
     * @return
     */
    public List<ProductImage> findProductImage(Integer productId);

    /**
     * 删除商品图片图片
     * @param imageId 图片id
     * @return
     */
    public Integer deleteProductImage(List<ProductImage> imageId);

    /**
     * 修改商品图片主图
     * @param id 图片id
     * @return
     */
    public Integer updateImageSige(Integer id);

    /**
     * 修改商品上架下架
     * @param productId 商品id
     * @param state true 上架 false 下架
     * @return
     */
    public Integer updateProductState(@Param("productId") Integer productId,@Param("state") Boolean state);

    /**
     * 删除商品
     * @param productIde 商品id
     * @return
     */
    public Integer deleteProduct(Integer productIde);


    /**
     * 修改商品上下架
     * @param productId 商品id
     * @param shelves 上架下架
     * @return
     */
    public Integer updateShelves(@Param("productId") Integer productId,@Param("shelves")Integer shelves);

    /**
     * 查询配置库存
     * @param productId 商品id
     * @return
     */
    public List<Integer> findDistinctionInventory(@Param("productId") Integer productId);


}
