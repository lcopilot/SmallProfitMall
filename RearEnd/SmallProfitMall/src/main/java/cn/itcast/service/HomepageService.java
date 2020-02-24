package cn.itcast.service;

import cn.itcast.domain.RotationChart;

import java.util.List;

public interface HomepageService {
    //查询轮播图图片
    public List<RotationChart> findRotationChart();
}
