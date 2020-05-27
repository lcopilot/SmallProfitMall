package cn.itcast.dao;

import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.*;

import java.util.List;

/**
 *
 */
public interface HomepageDao {


    /**
     * 查询轮播图 最新
     * @param imageType 查询图片的类型
     * @return
     */
    public List<Slideshow> findSlideshow(Integer imageType);
    /**
     * 搜索栏下导航
     * @return
     */
    public List<Classify> findNavigation2();

    /**
     * 查询图标
     * @return
     */
    public List<Icon> findIcon();

    /**
     * 查询商品分类
     * @return
     */
    public List<ProductPrimaryCategory> findProductCategory();


}
