package cn.itcast.dao;

import cn.itcast.domain.Navigation;
import cn.itcast.domain.Navigation_2;
import cn.itcast.domain.RotationChart;

import java.util.List;

public interface HomepageDao {
    //查询轮播图图片
    public List<RotationChart> findRotationChart();

    //商品分类导航栏
    public List<Navigation> findNavigation();

    //商品分类导航栏2
    public List<Navigation_2> findNavigation2();
}
