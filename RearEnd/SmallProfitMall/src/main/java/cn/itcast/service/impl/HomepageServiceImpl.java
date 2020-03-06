package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.*;
import cn.itcast.service.HomepageService;
import cn.itcast.util.RedisUtil;
import com.sun.org.apache.xpath.internal.objects.XNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.Arrays;
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
            List<Navigation> Navigation_1s = homepageDao.findNavigation();
            redisUtil.lSet("Navigation_1",Navigation_1s);
            ArrayList[] arrayLists = {(ArrayList) Navigation_1s}; //转换返回格式
            List list= Arrays.asList(arrayLists);   //增加一层数组
            List<Navigation>  Navigation_1 = list;
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
            List<NavigationClassify> findClassifications = homepageDao.findClassification();
            redisUtil.lSet("findClassification",findClassifications);//存入缓存
            ArrayList[] arrayLists = {(ArrayList) findClassifications}; //转换返回格式
            List list= Arrays.asList(arrayLists);   //增加一层数组
            List<NavigationClassify>  findClassification = list;
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
            List<Navigation_2> Navigation_2s = homepageDao.findNavigation2();
            redisUtil.lSet("Navigation_2", Navigation_2s);  //存入缓存
            ArrayList[] arrayLists = {(ArrayList) Navigation_2s}; //转换返回格式
            List list= Arrays.asList(arrayLists);   //增加一层数组
            List<Navigation_2>  Navigation_2 = list;
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
            List<Icon> Icons = homepageDao.findIcon();
            redisUtil.lSet("Icon", Icons);  //存入缓存
            ArrayList[] arrayLists = {(ArrayList) Icons}; //转换返回格式
            List list= Arrays.asList(arrayLists);   //增加一层数组
            List<Icon>  Icon = list;
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

