package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.*;
import cn.itcast.service.HomepageService;
import cn.itcast.util.redis.RedisUtil;
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


    /**
     * 轮播图
     * @return 轮播图集合
     */
    @Override
    public List findRotationChart() {
        List<RotationChart> redis = (List<RotationChart>)redisUtil.get("RotationChart");
        if (redis==null || redis.size()==0){
            List<RotationChart> findRotationChart = homepageDao.findRotationChart();
            redisUtil.set("RotationChart",findRotationChart);
            return findRotationChart;
        }
     return redis;
    }



    /**
     * 详细分类
     * @return
     */
    @Override
    public Classification findNavigationInDetail(){
        Classification redis = (Classification) redisUtil.get("findNavigationInDetail");
        if (redis==null){
            Classification classification = new Classification();
            classification.setNavigationClassify(homepageDao.findNavigationClassify());
            classification.setNavigations(homepageDao.findNavigation());
            redisUtil.set("findNavigationInDetail",classification);
            return classification;
        }
        return redis;

    }

    /**
     * 查询搜索栏下导航栏
     * @return
     */
    @Override
    public List<Classify> findNavigation2() {
        List<Classify> redis = (List<Classify>) redisUtil.get("findNavigation2");
        if (redis==null || redis.size() == 0 ) {
            System.out.println("数据库中取");
            List<Classify> navigation2 = homepageDao.findNavigation2();
            //存入缓存
            redisUtil.set("findNavigation2", navigation2);

            return navigation2;
        } else {
            System.out.println("缓存中取");
           // 取缓存
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


}

