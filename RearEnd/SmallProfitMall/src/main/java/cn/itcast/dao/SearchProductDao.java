package cn.itcast.dao;

import cn.itcast.domain.searchProduct.SearchProduct;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import javax.ws.rs.Path;
import java.util.List;

/**
 * 搜索商品
 * @author Kite
 * @date 2020/5/16
 */
public interface SearchProductDao {

    /**
     * 查询一级商品
     * @param productName
     */
    public void findProduct(String productName);

    /**
     * 查询一级目录是否有商品
     * @param productName 查询内容
     * @return 查询出来的集合
     */
    public List<SearchProduct> findPrimaryProduct(@Param("productName") String productName,@Param("start")Integer start,@Param("pageSize")Integer pageSize,@Param("gradePrimary") Integer gradePrimary);
}
