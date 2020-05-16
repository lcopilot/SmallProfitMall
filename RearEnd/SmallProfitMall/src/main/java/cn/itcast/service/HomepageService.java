package cn.itcast.service;

import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.*;

import java.util.List;

public interface HomepageService {
    /**
     * 查询轮播图图片
     *
     * @return
     */
    public List findRotationChart();


    /**
     * 查询搜索栏下导航栏
     *
     * @return
     */
    public List<Classify> findNavigation2();


    /**
     * 查询图标
     *
     * @return
     */
    public List<Icon> findIcon();





    /**
     *查询商品分类
     * @return
     */
    public    List<ProductCategory> findProductCategory();



}
