package cn.itcast.service.impl;

import cn.itcast.dao.ProductDao;
import cn.itcast.domain.*;
import cn.itcast.service.ProductService;
import cn.itcast.util.RedisUtil;
import cn.itcast.util.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service("commodityService")
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao ProducDao;

    @Autowired
    RedisUtil redisUtil;


    SeckillResult seckillResult = new SeckillResult();


    TimeUtil timeUtil = new TimeUtil();

    //秒杀
    @Override
    public SeckillResult findSeckill() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH mm:ss");//格式化输出日期
        ArrayList[] arrayLists1 = {new ArrayList(ProducDao.findSeckill(1,4)),new ArrayList(ProducDao.findSeckill(2,4)),new ArrayList(ProducDao.findSeckill(3,4)),new ArrayList(ProducDao.findSeckill(4,4))};
        System.out.println(arrayLists1);
        seckillResult.setSeckillProduct(arrayLists1);
        Date date=new Date();//获取当前时间
        Date time1 = timeUtil.AddTwoTours(date);//获取两个小时后时间
        String time3 = sdf.format(date);    //当前时间转为字符串
        String time2 =sdf.format(time1);    //两小时后时间转字符串
        seckillResult.setSpikeTime(time2);//设置两小时后时间
        seckillResult.setCurrentTime(time3);//设置当前时间
        return seckillResult;
    }

     //查询低价商品
    @Override
    public List<ProductLowPrice> findProductLowPrice() {
        List<ProductLowPrice> redis = (List<ProductLowPrice>) redisUtil.lGet("ProductLowPrice", 0, -1);
        System.out.println(redis);
        if (redis.size() == 0) {
            System.out.println("数据库中取");
            List<ProductLowPrice> ProductLowPrice = ProducDao.findProductLowPrice();
            redisUtil.lSet("ProductLowPrice", ProductLowPrice);  //存入缓存
            return ProductLowPrice;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redis;
        }
    }

    //查询广告
    @Override
    public List<Ad> findAd() {
        List<Ad> redis = (List<Ad>) redisUtil.lGet("Ad", 0, -1);
        System.out.println(redis);
        if (redis.size() == 0) {
            System.out.println("数据库中取");
            List<Ad> ad = ProducDao.findAd();
            redisUtil.lSet("Ad", ad);  //存入缓存
            return ad;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redis;
        }
    }
}
