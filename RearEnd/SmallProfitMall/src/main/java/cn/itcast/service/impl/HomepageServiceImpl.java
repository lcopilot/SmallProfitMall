package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.RotationChart;
import cn.itcast.service.HomepageService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("homepageService")
public class HomepageServiceImpl implements HomepageService {

    @Autowired
    HomepageDao homepageDao;
    @Override
    public List<RotationChart> findRotationChart() {
        return homepageDao.findRotationChart();
    }
}
