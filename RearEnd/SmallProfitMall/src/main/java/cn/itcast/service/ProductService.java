package cn.itcast.service;

import cn.itcast.domain.commodity.Ad;
import cn.itcast.domain.commodity.Recommend;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public interface ProductService {
    /**
     * 查询秒杀商品
     * @return
     * @throws ParseException
     */
    public ArrayList[]  findSeckill() throws ParseException;

    /**
     * 查询低价商品
     * @return
     */
    public ArrayList[] findProductLowPrice();

    /**
     * 查询所有广告
     * @return
     */
    public List<Ad> findAd();

    /**
     * 查询所有为你推荐
     * @return
     */
    public List<Recommend> findRecommend();
}
