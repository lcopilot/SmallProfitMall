package cn.itcast.service.impl;

import cn.itcast.dao.ProductDao;
import cn.itcast.domain.*;
import cn.itcast.service.ProductService;
import cn.itcast.util.RedisUtil;
import cn.itcast.util.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Service("commodityService")
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao ProducDao;

    @Autowired
    RedisUtil redisUtil;

    @Autowired
    SeckillResult seckillResult;

    ProductLowPriceResult productLowPriceResult = new ProductLowPriceResult();
    //秒杀
    @Override
    public SeckillResult findSeckill() throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//格式化输出日期
        ArrayList[] arrayLists1 = {new ArrayList(ProducDao.findSeckill(0,4)),
                new ArrayList(ProducDao.findSeckill(4,4)),
                new ArrayList(ProducDao.findSeckill(8,4)),
                new ArrayList(ProducDao.findSeckill(12,4))};
        seckillResult.setSeckillProduct(arrayLists1);
        Date date=new Date();//获取当前时 间
        Date time1 = TimeUtil.AddTwoTours(date);//获取两个小时后时间
        String time3 = sdf.format(date);    //当前时间转为字符串
        Long time2 =TimeUtil.timestamp();    //两小时后时间转字符串
        seckillResult.setSpikeTime(time2);//设置两小时后时间
        seckillResult.setCurrentTime(time3);//设置当前时间
        return seckillResult;
    }

     //查询低 价商品
    @Override
    public ProductLowPriceResult findProductLowPrice() {
        ArrayList[] arrayLists1 = {new ArrayList(ProducDao.findProductLowPrice(0, 6)),
                new ArrayList(ProducDao.findProductLowPrice(6, 6)),
                new ArrayList(ProducDao.findProductLowPrice(12, 6)),
        };
        productLowPriceResult.setProductLowPrice(arrayLists1);
        return productLowPriceResult;
    }

    //查询广告
    @Override
    public List<Ad> findAd() {
        List<Ad> redis = (List<Ad>) redisUtil.lGet("Ad", 0, -1);
        if (redis.size() == 0) {
            System.out.println("数据库中取");
            List<Ad> ads = ProducDao.findAd();
            redisUtil.lSet("Ad", ads);  //存入缓存
            ArrayList[] arrayLists = {(ArrayList) ads}; //转换返回格式
            List list= Arrays.asList(arrayLists);//增加一层数组
            List<Ad>  ad = list;
            return ad;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redis;
        }
    }


    //为你推荐商品
    @Override
    public List<Recommend> findRecommend() {
        List<Recommend> redis = (List<Recommend>) redisUtil.lGet("recommend", 0, -1);
        if (redis.size() == 0) {
            System.out.println("数据库中取");
            List<Recommend> recommends = ProducDao.findRecommend();
            redisUtil.lSet("recommend", recommends);  //存入缓存
            ArrayList[] arrayLists = {(ArrayList) recommends}; //转换返回格式
            List list= Arrays.asList(arrayLists);//增加一层数组
            List<Recommend>  recommend = list;
            return  recommend;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redis;
        }
    }


}
