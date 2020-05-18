package cn.itcast.dao;

import cn.itcast.domain.poribuctPageviews.PoribuctPageviews;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

/**
 * @author Kite
 * @date 2020/5/17
 */
public interface ProductPageviewsDao {
    /**
     * 新增商品浏览量
     * @param poribuctPageviews 浏览商品对象
     * @return
     */
    public Integer addProductPageviews(PoribuctPageviews poribuctPageviews);

    /**
     * 查询用户三小时是否浏览过
     * @param userIp 用户IP地址
     * @return 是否访问
     */
    public Integer findProductPageviews(String userIp);

    /**
     * 查询用户当天是否浏览过
     * @param userIp 用户ip
     * @return
     */
    public Integer findTodayProductPageviews(String userIp);


}
