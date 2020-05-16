package cn.itcast.service.impl;

import cn.itcast.dao.SearchProductDao;
import cn.itcast.domain.searchProduct.SearchProduct;
import cn.itcast.service.SearchProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 搜索商品业务层
 * @author Kite
 * @date 2020/5/16
 */
@Service
public class SearchProductServiceImpl implements SearchProductService {
    /**收拾持久层**/
    @Autowired
    SearchProductDao searchProductDao;

    /**
     * 搜索商品
     * @param productName 搜索内容
     * @param currentPage 当前页数
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public List<SearchProduct> findPrimaryProduct(String productName,Integer currentPage, Integer pageSize) {
        //开始页
        Integer start=(currentPage-1)*pageSize;
        List<SearchProduct> searchProducts = null;
        for (int i = 1; i <4 ; i++) {
             searchProducts = searchProductDao.findPrimaryProduct(productName,start,pageSize,i);
            if (searchProducts.size()>0){
                break;
            }
        }

        for (int i = 0; i <searchProducts.size() ; i++) {
            searchProducts.get(i).setFavorite(1);
            searchProducts.get(i).setHot(0);
        }
        return searchProducts;
    }
}
