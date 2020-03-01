package cn.itcast.service;

import cn.itcast.domain.*;

import java.text.ParseException;
import java.util.List;

public interface ProductService {
    //查询秒杀
    public SeckillResult findSeckill() throws ParseException;

    //查询低价商品
    public ProductLowPriceResult findProductLowPrice();

    public List<Ad> findAd();
}
