package cn.itcast.service.impl;

import cn.itcast.dao.ProductDao;
import cn.itcast.domain.Ad;
import cn.itcast.domain.Navigation_2;
import cn.itcast.domain.ProductLowPrice;
import cn.itcast.domain.Seckill;
import cn.itcast.service.ProductService;
import cn.itcast.util.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commodityService")
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao ProducDao;

    @Autowired
    RedisUtil redisUtil;
    //秒杀
    @Override
    public List<Seckill> findSeckill() {
        return ProducDao.findSeckill();
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

    //查询低价商品
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
