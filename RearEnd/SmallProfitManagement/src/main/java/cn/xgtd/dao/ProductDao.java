package cn.xgtd.dao;

import cn.xgtd.domain.product.BasicProduct;
import cn.xgtd.domain.product.Product;
import cn.xgtd.domain.product.ProductDistinction;
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
     * 查询商品
     * @param start 开始点
     * @param pageSize 每页查询数量
     * @return
     */
    public List<BasicProduct> fendBasicProduct(@Param("start") Integer start ,@Param("pageSize") Integer pageSize);

    /**
     * 查询商品总数量
     * @return
     */
    public Integer findFavoriteQuantity();
}
