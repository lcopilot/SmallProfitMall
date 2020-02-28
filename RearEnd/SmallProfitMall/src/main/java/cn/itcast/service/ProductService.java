package cn.itcast.service;

import cn.itcast.domain.Ad;
import cn.itcast.domain.Icon;
import cn.itcast.domain.ProductLowPrice;
import cn.itcast.domain.Seckill;

import java.util.List;

public interface ProductService {
    //查询秒杀
    public List<Seckill> findSeckill ();

    //查询低价商品
    public List<ProductLowPrice> findProductLowPrice();

    public List<Ad> findAd();
}
