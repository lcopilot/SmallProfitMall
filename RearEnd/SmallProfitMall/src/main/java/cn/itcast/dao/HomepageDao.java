package cn.itcast.dao;

import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.Icon;
import cn.itcast.domain.homepag.Navigation;
import cn.itcast.domain.homepag.NavigationClassify;
import cn.itcast.domain.homepag.RotationChart;

import java.util.List;

//主页
public interface HomepageDao {
    /**
     * 查询轮播图图片
     * @return
     */
    public List<RotationChart> findRotationChart();

    /**
     * 商品分类导航栏
     * @return
     */
    public List<Navigation> findNavigation();

    /**
     * 商品分类导航栏2
     * @return
     */
    public List<Classify> findNavigation2();

    /**
     * 查询图标
     * @return
     */
    public List<Icon> findIcon();

    /**
     * 查询详细分类
     * @param nid
     * @return
     */
    public List<NavigationClassify> findById(int nid);


    public List<NavigationClassify> findClassification();
}
