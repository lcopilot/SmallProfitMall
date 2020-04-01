package cn.itcast.service.impl;

import cn.itcast.dao.ProductDao;
import cn.itcast.domain.commodity.Ad;
import cn.itcast.domain.commodity.ProductLowPriceResult;
import cn.itcast.domain.commodity.Recommend;
import cn.itcast.domain.commodity.SeckillResult;
import cn.itcast.service.ProductService;
import cn.itcast.util.cache.RedisUtil;
import cn.itcast.util.logic.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Service("commodityService")
@Transactional
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao ProducDao;

    @Autowired
    RedisUtil redisUtil;




    //秒杀
    @Override
    public List<SeckillResult> findSeckill() throws ParseException {
        SeckillResult seckillResult = new SeckillResult();
        List<SeckillResult> redis = (List<SeckillResult>) redisUtil.lGet("SeckillResult", 0, -1);
        if (redis.size()==0) {
            ArrayList[] arrayLists1 = {new ArrayList(ProducDao.findSeckill(0,4)),
                    new ArrayList(ProducDao.findSeckill(4,4))};
            seckillResult.setSeckillProduct(arrayLists1);
            redisUtil.lSet("SeckillResult", seckillResult);  //存入缓存
            List list= Arrays.asList(seckillResult);//增加一层数组
            List<SeckillResult>  recommend = list;
            System.out.println("存入数据库");
            return recommend;
        }
        System.out.println("缓中取");
        return redis;
    }

     //查询低 价商品
    @Override
    public  List<ProductLowPriceResult> findProductLowPrice() {
        ProductLowPriceResult productLowPriceResult = new ProductLowPriceResult();
        List<ProductLowPriceResult> redis = (List<ProductLowPriceResult>) redisUtil.lGet("ProductLowPriceResult", 0, -1);
        if(redis.size()==0){
            ArrayList[] arrayLists1 = {new ArrayList(ProducDao.findProductLowPrice(0, 6)),
                    new ArrayList(ProducDao.findProductLowPrice(6, 6))
            };
            productLowPriceResult.setProductLowPrice(arrayLists1);
            redisUtil.lSet("productLowPriceResult", productLowPriceResult);  //存入缓存
            List list= Arrays.asList(productLowPriceResult);//增加一层数组
            List<ProductLowPriceResult>  recommend = list;
            System.out.println("存入数据库");
            return recommend;
        }

        return redis;
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
