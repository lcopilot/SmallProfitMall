package cn.itcast.service;

import cn.itcast.domain.commodity.Ad;
import cn.itcast.domain.commodity.ProductLowPriceResult;
import cn.itcast.domain.commodity.Recommend;
import cn.itcast.domain.commodity.SeckillResult;

import java.text.ParseException;
import java.util.List;

public interface ProductService {
    //查询秒杀
    public List<SeckillResult> findSeckill() throws ParseException;

    //查询低价商品
    public List<ProductLowPriceResult> findProductLowPrice();

    //查询所有广告
    public List<Ad> findAd();

    //查询所有为你推荐
    public List<Recommend> findRecommend();
}
