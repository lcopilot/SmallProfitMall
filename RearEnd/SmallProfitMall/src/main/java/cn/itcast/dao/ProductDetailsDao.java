package cn.itcast.dao;


import cn.itcast.domain.ProductDatails.ProductAttributes;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.domain.ProductDatails.ProductDistinction;
import cn.itcast.domain.ProductDatails.Recommend;
import cn.itcast.domain.order.ProductContent;
import com.tencentcloudapi.iot.v20180123.models.Product;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 商品详细
 * @author kity
 */
public interface ProductDetailsDao {
    /**
     * 查询商品详细信息
     * @productId productId 商品id
     * @return
     */
    public ProductDetailsResult fendProduct(@Param("productId")Integer productId);

    /**
     * 查询商品属性
     * @param productId
     * @return
     */
    public List<ProductDistinction> findProductDistinction(@Param("productId")Integer productId);

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


    /**
     * 查询商品库存
     * @param productId 商品id
     * @return
     */
    public List<Double> findProductInventory(@Param("productId")Integer[] productId);

    /**
     * 查询商品库存
     * @param productId 商品id
     * @return
     */
    public List<Double> findProductSales(@Param("productId")Integer[] productId);


    /**
     * 查询商品库存跟销量
     * @param productId 商品id
     * @return
     */
    public ProductDetailsResult  findSalesInventory(@Param("productId")Integer productId);

    /**
     * 修改商品销量
     * @param productId 用户id
     * @param quantity 购买数量
     * @return
     */
    public Integer updateProductSales(@Param("productId") Integer productId,@Param("purchaseQuantity")Integer quantity);

    /**
     * 查询商品浏览量
     * @param productId 商品id
     * @return 商品浏览量
     */
    public Integer findProductPageviews(@Param("productId") Integer productId);
    /**
     * 修改商品库存
     * @param productId
     * @param quantity
     * @return
     */
    public Integer updateProductInventory(@Param("productId") Integer productId,@Param("purchaseQuantity")Integer quantity);


    /**
     * 查询商品同类推荐商品
     * @param productId 商品id
     * @param start 查询开始页
     * @param pageSize 每页查询数量
     * @return
     */
    public List<Recommend> findFinalRecommend(@Param("productId") Integer productId,@Param("start")Integer start,
                                         @Param("pageSize")Integer pageSize,@Param("gradePrimary") Integer gradePrimary);

    /***
     * 查询商品介绍
     * @param productId 商品id
     * @return
     */
    public ProductDetailsResult findProductDesciption(@Param("productId") Integer productId);


    /**
     * 查询商品属性
     * @param attributeId
     * @return
     */
    public String findProperty(@Param("attributeId") Integer attributeId);
    /**
     * 颜色
     * @param colourId 颜色id
     * @return
     */
    public String findProductColour(Integer colourId);

    /**
     * 套餐
     * @param comboId 套餐id
     * @return
     */
    public String findProductCombo(Integer comboId);

    /**
     * 种类
     * @param kindId 种类od
     * @return
     */
    public String findProductKind(Integer kindId);

    /**
     * 尺寸
     * @param sizeId 尺寸id
     * @return
     */
    public String findProductSize(Integer sizeId);

    /**
     * 配置
     * @param specificationId 配置id
     * @return
     */
    public String findProductSpecification(Integer specificationId);

    /**
     * 口味
     * @param tasteId 口味id
     * @return
     */
    public String findProductTaste(Integer tasteId);

    /**
     * 版本id
     * @param versionId
     * @return
     */
    public String findProductVersion(Integer versionId);

    /**
     *查询商品配置
     * @param distinctionId
     * @return
     */
    public ProductDistinction findDistinction(Integer distinctionId);

}
