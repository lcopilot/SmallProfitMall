package cn.xgtd.service.impl;

import cn.xgtd.dao.ProductDao;
import cn.xgtd.domain.product.BasicProduct;
import cn.xgtd.domain.product.Product;
import cn.xgtd.domain.product.ProductContext;
import cn.xgtd.domain.product.ProductDistinction;
import cn.xgtd.service.ProductService;
import cn.xgtd.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 商品业务层
 * @author Kite
 * @date 2020/6/6
 */
@Service
public class ProductServiceImpl implements ProductService {


    /**商品持久层**/
    @Autowired
    ProductDao productDao;

    @Autowired
    RedisUtil redisUtil;


    @Override
    public List<BasicProduct> fendBasicProduct(Integer currentPage, Integer pageSize) {
        Integer start=(currentPage-1)*pageSize;
        List<BasicProduct> products =   productDao.fendBasicProduct(start,pageSize);
        return products;
    }

    /**
     * 查询总页数跟总数量
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public Integer[] fendTotalPage(Integer pageSize) {
        Integer[] TotalPage=new Integer[2];
        Integer quantity = productDao.findFavoriteQuantity();
        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }
}
