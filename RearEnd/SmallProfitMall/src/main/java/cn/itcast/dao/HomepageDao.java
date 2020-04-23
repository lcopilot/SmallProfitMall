package cn.itcast.dao;

import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.*;

import java.util.List;

//主页
public interface HomepageDao {
    /**
     * 查询轮播图图片
     * @return
     */
    public List<RotationChart> findRotationChart();

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
     * 查询导航详细
     * @return
     */

    public List<NavigationClassify> findNavigationClassify();

    /**
     * 查询导航标题
     * @return
     */
    public List<Navigation> findNavigation();


}
