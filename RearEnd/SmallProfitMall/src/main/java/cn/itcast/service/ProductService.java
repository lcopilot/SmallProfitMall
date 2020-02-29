package cn.itcast.service;

import cn.itcast.domain.*;

import java.util.List;

public interface ProductService {
    //查询秒杀
    public SeckillResult findSeckill();

    //查询低价商品
    public List<ProductLowPrice> findProductLowPrice();

    public List<Ad> findAd();
}
