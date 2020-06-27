package cn.itcast.dao;

import cn.itcast.domain.searchProduct.SearchProduct;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import javax.ws.rs.Path;
import java.util.Date;
import java.util.List;

/**
 * 搜索商品
 * @author Kite
 * @date 2020/5/16
 */
@Repository
public interface SearchProductDao {

    /**
     * 查询一级商品
     * @param productName
     */
    public void findProduct(String productName);

    /**
     * 搜索商品
     * @param productName 搜索商品的名称
     * @param start 从第三条记录开始查
     * @param pageSize 每页查询数量
     * @param gradePrimary 查询的等级 1为查一级商品的一级分类 2为查商品的二级分类 3为查商品三级分类 4为查所有商品名称
     * @return
     */
    public List<SearchProduct> findPrimaryProduct(@Param("productName") String productName,@Param("start")Integer start,
                                                  @Param("pageSize")Integer pageSize,@Param("gradePrimary") Integer gradePrimary);


    /**
     * 查询搜索出来的商品数量
     * @param productName
     * @param gradePrimary
     * @return
     */
    public Integer findPrimaryProductQuantity(@Param("productName") String productName,@Param("gradePrimary") Integer gradePrimary);

    /**
     * 新增商品关键词
     * @param keyWords 关键词
     * @param userId 用户id
     * @return
     */
    public Integer addProductKeyWords(@Param("keyWords") String keyWords ,@Param("userId")  String userId,@Param("searchDate") Date searchDate);

    /**
     * 新增关键字
     * @param keyWords 关键字
     * @return
     */
    public Integer addKeyWords(String keyWords);

    /**
     * 查询关键词是否存在
     * @param keyWords 关键词
     * @return
     */
    public Integer findKeyWords(String keyWords);
    /**
     * 新增搜索次数
     * @param keyWordsId 关键词id
     * @return
     */
    public Integer updateKeyWords(Integer keyWordsId);
    /**
     * 查询用户三小时是否搜索过
     * @param date 当前时间
     * @param userId 用户id
     * @return 是否访问
     */
    public Integer findProductKeyWords(@Param("date") Date date,@Param("userId") String userId,@Param("keyWords") String keyWords);

    /**
     * 查询用户当天是否搜索过
     * @param userId 用户id
     * @return
     */
    public Integer findTodayProductKeyWords(@Param("userId") String userId ,@Param("keyWords") String keyWords);
}
