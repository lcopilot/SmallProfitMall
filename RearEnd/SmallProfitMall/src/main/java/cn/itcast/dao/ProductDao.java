package cn.itcast.dao;

import cn.itcast.domain.Ad;
import cn.itcast.domain.Icon;
import cn.itcast.domain.ProductLowPrice;
import cn.itcast.domain.Seckill;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProductDao {
    //查询秒杀商品表
    public List<Seckill> findSeckill ();

    //查询低价商品
    public List<ProductLowPrice> findProductLowPrice();

    //广告
    public List<Ad> findAd();
}