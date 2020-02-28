package cn.itcast.controller;

import cn.itcast.domain.Ad;
import cn.itcast.domain.ProductLowPrice;
import cn.itcast.domain.Seckill;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/CommodityController")
@ResponseBody
public class ProductController {

    @Autowired
    ProductService commodityService;

    /**
     * 秒杀商品
     * @return
     */
    @RequestMapping("/findSeckill")
    public QueryResponseResult findSeckill() {
        // 调用service的方法
        List<Seckill> list = commodityService.findSeckill();
        QueryResult<Seckill> result = new QueryResult<>();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    /**
     * 低价商品
     * @return
     */
    @RequestMapping("/findProductLowPrice")
    public QueryResponseResult ProductLowPrice() {
        // 调用service的方法
        List<ProductLowPrice> list = commodityService.findProductLowPrice();
        QueryResult<ProductLowPrice> result = new QueryResult<>();
        result.setList(list);
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
        QueryResult<Ad> result = new QueryResult<>();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }
}
