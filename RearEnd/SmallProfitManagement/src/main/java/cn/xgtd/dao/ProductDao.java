package cn.xgtd.dao;

import cn.xgtd.domain.product.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 商品持久层
 * @author Kite
 * @date 2020/6/6
 */
@Mapper
public interface ProductDao {

    /**
     * 查询所有商品
     * @return
     */
    public List<Product> findProductList();
}
