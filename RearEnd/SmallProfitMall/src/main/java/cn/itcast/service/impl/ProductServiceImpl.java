package cn.itcast.service.impl;

import cn.itcast.dao.ProductDao;
import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.domain.commodity.Ad;
import cn.itcast.domain.commodity.ProductLowPriceResult;
import cn.itcast.domain.commodity.Recommend;
import cn.itcast.domain.commodity.SeckillResult;
import cn.itcast.service.ProductService;
import cn.itcast.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 主页业务层
 * @author 86185
 */
@Service("commodityService")
public class ProductServiceImpl implements ProductService {

    /**商品持久层**/
    @Autowired
    ProductDao ProducDao;

    /**商品详细持久陈**/
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
    public List<SeckillResult> findSeckill() throws ParseException {
        SeckillResult seckillResult = new SeckillResult();
        List<SeckillResult> redis = (List<SeckillResult>) redisUtil.lGet("SeckillResult", 0, -1);
        if (redis !=null) {
            ArrayList[] arrayLists1 = {new ArrayList(ProducDao.findSeckill(0,4)),
                    new ArrayList(ProducDao.findSeckill(4,4))};
            seckillResult.setSeckillProduct(arrayLists1);
            //存入缓存
            redisUtil.lSet("SeckillResult", seckillResult);
            //增加一层数组
            List list= Arrays.asList(seckillResult);
            List<SeckillResult>  recommend = list;
            System.out.println("秒杀商品信息从数据库取");
            return recommend;
        }
        System.out.println("缓中取");
        return redis;
    }

    /**
     * 查询低 价商品
     * @return
     */
    @Override
    public  List<ProductLowPriceResult> findProductLowPrice() {
        ProductLowPriceResult productLowPriceResult = new ProductLowPriceResult();
        List<ProductLowPriceResult> redis = (List<ProductLowPriceResult>) redisUtil.lGet("ProductLowPriceResult", 0, -1);
        if(redis != null){
            ArrayList[] arrayLists1 = {new ArrayList(ProducDao.findProductLowPrice(0, 6)),
                    new ArrayList(ProducDao.findProductLowPrice(6, 6))
            };
            productLowPriceResult.setProductLowPrice(arrayLists1);
            //存入缓存
            redisUtil.lSet("productLowPriceResult", productLowPriceResult);
            //增加一层数组
            List list= Arrays.asList(productLowPriceResult);
            List<ProductLowPriceResult>  recommend = list;
            System.out.println("存入数据库");
            return recommend;
        }

        return redis;
    }

    /**
     * 查询广告
     * @return
     */
    @Override
    public List<Ad> findAd() {
        List<Ad> redis = (List<Ad>) redisUtil.lGet("Ad", 0, -1);
        if (redis != null) {
            System.out.println("数据库中取");
            List<Ad> ads = ProducDao.findAd();
            //存入缓存
            redisUtil.lSet("Ad", ads);
            //转换返回格式
            ArrayList[] arrayLists = {(ArrayList) ads};
            //增加一层数组
            List list= Arrays.asList(arrayLists);
            List<Ad>  ad = list;
            return ad;
        } else {
            System.out.println("缓存中取");
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
            System.out.println("数据库中取");
            List<Recommend> recommends = ProducDao.findRecommend();
            //存入缓存
            redisUtil.set("recommend", recommends);
            return  recommends;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redis;
        }
    }


}
