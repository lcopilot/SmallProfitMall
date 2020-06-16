package cn.xgtd.service;

import cn.xgtd.domain.product.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * @author Kite
 * @date 2020/6/6
 */
public interface ProductService {


    /**
     * 查询商品总数量跟页数
     * @param pageSize
     * @return
     */
    public Integer[] fendTotalPage(Integer pageSize);


    /**
     * 查询商品详细
     * @return 商品详细数据
     */
    public List<ProductDetails> findDetails(Integer currentPage,Integer pageSize);


    /**
     * 查询商品分类
     * @return
     */
    public List<ProductCategory> findCategory();

    /**
     * 添加商品
     * @param productDetails 商品对象
     * @return
     */
    public ProductDetails  addProduct(ProductDetails productDetails) throws IOException;

    /**
     * 查询所有商品属性种类
     * @return
     */
    public List<AttributeType> findAttributeType();

}
