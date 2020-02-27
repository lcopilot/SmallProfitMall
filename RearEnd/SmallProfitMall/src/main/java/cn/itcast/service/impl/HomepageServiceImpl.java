package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.Icon;
import cn.itcast.domain.Navigation;
import cn.itcast.domain.Navigation_2;
import cn.itcast.domain.RotationChart;
import cn.itcast.service.HomepageService;
import cn.itcast.util.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Set;

@Service("homepageService")
public class HomepageServiceImpl implements HomepageService {

    @Autowired
    private HomepageDao homepageDao;

    @Autowired
    RedisUtil redisUtil;


    //轮播图
    @Override
    public List<RotationChart> findRotationChart() {
        return homepageDao.findRotationChart();
    }

    //导航栏
    @Override
    public List<Navigation> findNavigation() {
        List<Navigation> redis = (List<Navigation>) redisUtil.lGet("Navigation_1",0,-1);
        if(redis.size() == 0){
            System.out.println("数据库中取");
            List<Navigation> Navigation_1 = homepageDao.findNavigation();
            redisUtil.lSet("Navigation_1",Navigation_1);
            return Navigation_1;
        }else {
            System.out.println("数据库中取");
            return redis;
        }
    }


    @Override
    public List<Navigation_2> findNavigation2() {
        List<Navigation_2> redis = (List<Navigation_2>) redisUtil.lGet("Navigation_2", 0, -1);
        System.out.println(redis);
        if (redis.size() == 0) {
            System.out.println("数据库中取");
            List<Navigation_2> Navigation_2 = homepageDao.findNavigation2();
            redisUtil.lSet("Navigation_2", Navigation_2);  //存入缓存
            return Navigation_2;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redis;
        }

    }
    //查询图标
    @Override
    public List<Icon> findIcon() {
        List<Icon> redisIcon = (List<Icon>) redisUtil.lGet("Icon", 0, -1);
        System.out.println(redisIcon);
        if (redisIcon.size() == 0) {
            System.out.println("数据库中取");
            List<Icon> Icon = homepageDao.findIcon();
            redisUtil.lSet("Icon", Icon);  //存入缓存
            return Icon;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redisIcon;
        }
    }
}

