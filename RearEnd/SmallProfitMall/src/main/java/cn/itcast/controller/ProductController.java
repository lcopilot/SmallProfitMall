package cn.itcast.controller;

import cn.itcast.domain.commodity.Ad;
import cn.itcast.domain.commodity.ProductLowPriceResult;
import cn.itcast.domain.commodity.Recommend;
import cn.itcast.domain.commodity.SeckillResult;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/CommodityController")
@ResponseBody
public class ProductController {

    @Autowired
    ProductService commodityService;

    @Autowired
    ProductLowPriceResult productLowPriceResult;

    @Autowired
    QueryResult result;
    /**
     * 秒杀商品
     * @return
     */
    @RequestMapping("/findSeckill")
    public QueryResponseResult findSeckill() throws ParseException {
        // 调用service的方法
        SeckillResult seckillResult = commodityService.findSeckill();
        List<SeckillResult> logins= Arrays.asList(seckillResult);
        result.setList(logins);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    /**
     * 低价商品
     * @return
     */
    @RequestMapping("/findProductLowPrice")
    public QueryResponseResult ProductLowPrice() {
        // 调用service的方法
        ProductLowPriceResult productLowPriceResult = commodityService.findProductLowPrice();
        List<ProductLowPriceResult> logins= Arrays.asList(productLowPriceResult);
        result.setList(logins);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    /**
     * 广告
     * @return
     */
    @RequestMapping("/findAd")
    public QueryResponseResult findAd() {
        // 调用service的方法
        List<Ad> list = commodityService.findAd();
        result.setTotal(list.size());
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    /**
     * 为你推荐商品
     * @return
     */
    @RequestMapping("/Recommend")
    public QueryResponseResult findRecommend() {
        // 调用service的方法
        List<Recommend> list = commodityService.findRecommend();
        int a =list.size();
        result.setTotal(a);
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    @RequestMapping("/cs")
    public QueryResponseResult cs() {
        // 调用service的方法
        List<Ad> list = commodityService.findAd();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }
}
