package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.dao.ProductDao;
import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.domain.commodity.Ad;
import cn.itcast.domain.commodity.Recommend;
import cn.itcast.domain.footprint.Footprint;
import cn.itcast.domain.homepag.Slideshow;
import cn.itcast.service.ProductService;
import cn.itcast.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
 * 主页业务层
 * @author 86185
 */
@Service("commodityService")
public class ProductServiceImpl implements ProductService {


    /**主页持久层**/
    @Autowired
    private HomepageDao homepageDao;

    /**商品持久层**/
    @Autowired
    ProductDao ProducDao;

    /**商品详细持久层**/
    @Autowired
    ProductDetailsDao productDetailsDao;

    /**缓存工具类**/
    @Autowired
    RedisUtil redisUtil;

    /**
     * 秒杀
     * @return
     * @throws ParseException
     */
    @Override
    public ArrayList[]  findSeckill() {

        ArrayList[] redis = ( ArrayList[]) redisUtil.get("seckillResult");
        if (redis == null) {
            System.out.println("秒杀商品信息从数据库取");
            ArrayList[] arrayLists = {
                    new ArrayList(ProducDao.findSeckill(0,4)),
                    new ArrayList(ProducDao.findSeckill(4,4))
            };
            //存入缓存
            redisUtil.set("seckillResult", arrayLists,3600);
            return arrayLists;
        }
        System.out.println("缓中取");
        return redis;
    }

    /**
     * 查询低 价商品
     * @return
     */
    @Override
    public ArrayList[] findProductLowPrice() {
        ArrayList[] redis = (ArrayList[]) redisUtil.get("ProductLowPriceResult");
        if(redis == null){
            ArrayList[] arrayLists = {
                    new ArrayList(ProducDao.findProductLowPrice(0, 6)),
                    new ArrayList(ProducDao.findProductLowPrice(6, 6))
            };
            //存入缓存
            redisUtil.set("productLowPriceResult", arrayLists,3600);

            return arrayLists;
        }

        return redis;
    }

    /**
     * 查询广告
     * @return
     */
    @Override
    public List<Slideshow> findAd() {
        List<Slideshow> redis = (List<Slideshow>) redisUtil.get("Ad");
        if (redis == null) {
            System.out.println("数据库中取广告数据");
            List<Slideshow> ad = homepageDao.findSlideshow(3);
            //存入缓存
            redisUtil.set("Ad", ad,3600);
            return ad;
        } else {
            System.out.println("缓存中取广告数据");
            //取缓存
            return redis;
        }
    }


    /**
     * 为你推荐商品
     * @return
     */
    @Override
    public List<Recommend> findRecommend() {
        List<Recommend> redis = (List<Recommend>) redisUtil.get("recommend");
        if (redis == null ) {
            System.out.println("数据库中取为你推荐商品数据");
            List<Recommend> recommends = ProducDao.findRecommend(30);
            //存入缓存
            redisUtil.set("recommend", recommends,3600);
            return  recommends;
        } else {
            System.out.println("缓存中取为你推荐数据");
            //取缓存
            return redis;
        }
    }


}
