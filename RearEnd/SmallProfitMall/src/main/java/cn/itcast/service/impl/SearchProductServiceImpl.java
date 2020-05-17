package cn.itcast.service.impl;

import cn.itcast.dao.SearchProductDao;
import cn.itcast.domain.searchProduct.SearchProduct;
import cn.itcast.service.SearchProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map findPrimaryProduct(String productName,Integer currentPage, Integer pageSize) {
        Map result = new HashMap();
        Integer gradePrimary = 0;
        //开始页
        Integer start=(currentPage-1)*pageSize;
        List<SearchProduct> searchProducts = null;
        for (int i = 1; i <5 ; i++) {
             searchProducts = searchProductDao.findPrimaryProduct(productName,start,pageSize,i);
            gradePrimary=i;
            if (searchProducts.size()>0){
                break;
            }

        }

        for (int i = 0; i <searchProducts.size() ; i++) {
            searchProducts.get(i).setFavorite(1);
            searchProducts.get(i).setHot(0);
        }
        result.put("searchProducts",searchProducts);
        result.put("gradePrimary",gradePrimary);
        return result;
    }

    /**
     * 查询查询出来的商品数量以及计算出多少页数
     * @param SPrimaryContent 搜索的内容
     * @param pageSize 每页多少数量
     * @param PrimaryProduct 查询到的分类等级
     * @return
     */
    @Override
    public Integer[] fendTotalPage(String SPrimaryContent, Integer pageSize, Integer PrimaryProduct) {
        Integer[] TotalPage=new Integer[2];
        Integer quantity  = searchProductDao.findPrimaryProductQuantity(SPrimaryContent,PrimaryProduct);
        Integer totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }
}
