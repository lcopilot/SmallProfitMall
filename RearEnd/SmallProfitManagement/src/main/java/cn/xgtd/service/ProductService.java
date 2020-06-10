package cn.xgtd.service;

import cn.xgtd.domain.product.BasicProduct;
import cn.xgtd.domain.product.Product;
import cn.xgtd.domain.product.ProductDetails;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/6
 */
public interface ProductService {

    /**
     * 查询商品
     * @param currentPage 当前页
     * @param pageSize 每页查询数量
     * @return
     */
    public List<BasicProduct> fendBasicProduct( Integer currentPage , Integer pageSize);


    /**
     * 查询商品总数量跟页数
     * @param pageSize
     * @return
     */
    public Integer[] fendTotalPage(Integer pageSize);


    /**
     * 查询商品详细
     * @param productIds 商品id
     * @return 商品详细数据
     */
    public ProductDetails findDetails(Integer productIds);


    /**
     * 商品介绍 商品保障 商品参数
     * @param productId
     * @return
     */
    public ProductDetails findProductDesciption(Integer productId);

}
