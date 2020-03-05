package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.*;
import cn.itcast.service.HomepageService;
import cn.itcast.util.RedisUtil;
import com.sun.org.apache.xpath.internal.objects.XNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;


@Service("homepageService")
public class HomepageServiceImpl implements HomepageService {

    @Autowired
    private HomepageDao homepageDao;

    @Autowired
    RedisUtil redisUtil;

    @Autowired
    Classification classification;

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
            System.out.println("缓存中获取");
            return redis;
        }
    }

    //查询所有分类
    @Override
    public List<NavigationClassify> findClassification() {
        List<NavigationClassify> redis = (List<NavigationClassify>) redisUtil.lGet("findClassification",0,-1);
        if(redis.size() == 0){
            System.out.println("数据库中取");
            List<NavigationClassify> findClassification = homepageDao.findClassification();
            redisUtil.lSet("findClassification",findClassification);
            return findClassification;
        }else {
            System.out.println("缓存中获取");
            return redis;
        }

    }

    //详细分类
    public Classification navigationInDetail(){
        classification.setNavigationClassify(findClassification());
        classification.setNavigations(findNavigation());
        return classification;
    }

    //查询搜索栏下导航栏
    @Override
    public List<Navigation_2> findNavigation2() {
        List<Navigation_2> redis = (List<Navigation_2>) redisUtil.lGet("Navigation_2", 0, -1);
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

    //根基id查询商品分类详细
    public List<NavigationClassify> findById(int id) {
        return homepageDao.findById(id);
    }

}

