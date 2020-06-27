package cn.itcast.service.impl;

import cn.itcast.dao.SearchProductDao;
import cn.itcast.domain.searchProduct.SearchProduct;
import cn.itcast.service.SearchProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

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
    public Map findPrimaryProduct(String productName,String userId,Integer currentPage, Integer pageSize) {

        //新增搜索商品关键词
        //查询三小时内是否查询过
        //获取4小时前时间
        Calendar  dar=Calendar.getInstance();
        dar.add(java.util.Calendar.HOUR_OF_DAY, -4);
        Date date  = dar.getTime();
        Integer result1 = searchProductDao.findProductKeyWords(date,userId,productName);
        Integer result2 = searchProductDao.findTodayProductKeyWords(userId,productName);
        if (result1<1 && result2<4){
            //查询关键词是否存在
            Integer keyWords_Id = searchProductDao.findKeyWords(productName);
            if (keyWords_Id!=null){
                //存在关键词表+1
                searchProductDao.updateKeyWords(keyWords_Id);
            }else {
                //不存在 新增关键词
                searchProductDao.addKeyWords(productName);
            }
            searchProductDao.addProductKeyWords(productName,userId,new Date());
        }
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
