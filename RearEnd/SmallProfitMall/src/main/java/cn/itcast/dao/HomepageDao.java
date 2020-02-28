package cn.itcast.dao;

import cn.itcast.domain.*;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface HomepageDao {
    //查询轮播图图片
    public List<RotationChart> findRotationChart();

    //商品分类导航栏
    public List<Navigation> findNavigation();

    //商品分类导航栏2
    public List<Navigation_2> findNavigation2();

    //查询图标
    public List<Icon> findIcon();

    //根据id查询详细分类
    public List<NavigationClassify> findById(int nid);

    public List<NavigationClassify> findClassification();
}
