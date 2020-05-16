package cn.itcast.service;

import cn.itcast.domain.searchProduct.SearchProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Kite
 * @date 2020/5/16
 */
public interface SearchProductService {

    /**
     * 搜索商品
     * @param productName 搜索内容
     * @param currentPage 当前页数
     * @param pageSize 每页查询数量
     * @return
     */
    public List<SearchProduct> findPrimaryProduct( String productName,Integer currentPage,Integer pageSize);


    //public Integer[] fendTotalPage(SPrimaryContent,pageSize)
}
