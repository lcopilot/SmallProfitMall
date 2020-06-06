package cn.xgtd.service;

import cn.xgtd.domain.product.Product;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/6
 */
public interface ProductService {

    /**
     * 查询所有商品
     * @return
     */
    public List<Product> findProductList();




}
