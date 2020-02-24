package cn.itcast.dao;

import cn.itcast.domain.RotationChart;

import java.util.List;

public interface HomepageDao {
    //查询轮播图图片
    public List<RotationChart> findRotationChart();

}
