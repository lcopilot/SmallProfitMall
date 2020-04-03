package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.*;
import cn.itcast.service.HomepageService;
import cn.itcast.util.cache.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service("homepageService")
public class HomepageServiceImpl implements HomepageService {

    @Autowired
    private HomepageDao homepageDao;

    @Autowired
    RedisUtil redisUtil;


    /**
     * 轮播图
     * @return 轮播图集合
     */
    @Override
    public List<RotationChart> findRotationChart() {
        return homepageDao.findRotationChart();
    }

    /**
     * 导航栏
     * @return
     */
    @Override
    public List<Navigation> findNavigation() {
        //缓存库查询是否已存入
        List<Navigation> redis = (List<Navigation>) redisUtil.lGet("Navigation_1",0,-1);
        if(redis.size() == 0){
            System.out.println("数据库中取");
            List<Navigation> Navigation_1s = homepageDao.findNavigation();
            redisUtil.lSet("Navigation_1",Navigation_1s);
            //转换返回格式
            ArrayList[] arrayLists = {(ArrayList) Navigation_1s};
            //增加一层数组
            List list= Arrays.asList(arrayLists);
            List<Navigation>  Navigation_1 = list;
            return Navigation_1;
        }else {
            System.out.println("缓存中获取");
            return redis;
        }
    }

    /**
     * 查询所有分类
     * @return 分类集合
     */
    @Override
    public List<NavigationClassify> findClassification() {
        //查询缓存中是否存入
        List<NavigationClassify> redis = (List<NavigationClassify>) redisUtil.lGet("findClassification",0,-1);
        if(redis.size() == 0){
            System.out.println("数据库中取分类");
            List<NavigationClassify> findClassifications = homepageDao.findClassification();
            //存入缓存
            redisUtil.lSet("findClassification",findClassifications);
            //转换返回格式
            ArrayList[] arrayLists = {(ArrayList) findClassifications};
            //增加一层数组
            List list= Arrays.asList(arrayLists);
            List<NavigationClassify>  findClassification = list;
            return findClassification;
        }else {
            System.out.println("缓存中获取");
            return redis;
        }

    }

    /**
     * 详细分类
     * @return
     */
    @Override
    public Classification navigationInDetail(){
        Classification classification = new Classification();
        classification.setNavigationClassify(findClassification());
        classification.setNavigations(findNavigation());
        return classification;
    }

    /**
     * 查询搜索栏下导航栏
     * @return
     */
    @Override
    public List<Classify> findNavigation2() {
        List<Classify> redis = (List<Classify>) redisUtil.lGet("Classify", 0, -1);
        if (redis.size() == 0) {
            System.out.println("数据库中取");
            List<Classify> Navigation_2s = homepageDao.findNavigation2();
            //存入缓存
            redisUtil.lSet("Classify", Navigation_2s);
            //转换返回格式
            ArrayList[] arrayLists = {(ArrayList) Navigation_2s};
            //增加一层数组
            List list= Arrays.asList(arrayLists);
            List<Classify>  Classify = list;
            return Classify;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redis;
        }

    }

    /**
     * 查询图标
     * @return
     */
    @Override
    public List<Icon> findIcon() {
        List<Icon> redisIcon = (List<Icon>) redisUtil.lGet("Icon", 0, -1);
        System.out.println(redisIcon);
        if (redisIcon.size() == 0) {
            System.out.println("数据库中取");
            List<Icon> Icons = homepageDao.findIcon();
            //存入缓存
            redisUtil.lSet("Icon", Icons);
            //转换返回格式
            ArrayList[] arrayLists = {(ArrayList) Icons};
            //增加一层数组
            List list= Arrays.asList(arrayLists);
            List<Icon>  Icon = list;
            return Icon;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redisIcon;
        }
    }

    /**
     * 查询商品分类详细
     * @param id 用户id
     * @return
     */
    @Override
    public List<NavigationClassify> findById(int id) {
        return homepageDao.findById(id);
    }

}

