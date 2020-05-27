package cn.itcast.controller;

import cn.itcast.domain.commodity.Recommend;
import cn.itcast.domain.homepag.Slideshow;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.response.objectReturn.ObjectReturn;
import cn.itcast.response.objectReturn.ObjectReturnResponse;
import cn.itcast.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;


/**
 * 商品展示控制层
 * @author kity
 * **/
@Controller
@RequestMapping("/CommodityController")
@ResponseBody
public class ProductController {

    /**商品展示业务层**/
    @Autowired
    ProductService commodityService;


    /**
     * 秒杀商品
     * @return
     */
    @RequestMapping(value = "/findSeckill",method = RequestMethod.GET)
    public ObjectReturnResponse findSeckill() throws ParseException {
        ObjectReturn result = new ObjectReturn();
        result.setObject(commodityService.findSeckill());
        return  new ObjectReturnResponse(CommonCode.SUCCESS,result);
    }

    /**
     * 低价商品
     * @return
     */
    @RequestMapping(value = "/findProductLowPrice",method = RequestMethod.GET)
    public ObjectReturnResponse ProductLowPrice() {
        ObjectReturn result = new ObjectReturn();
        // 调用service的方法
        ArrayList[] productLowPriceResult = commodityService.findProductLowPrice();

        result.setObject(productLowPriceResult);
        return  new ObjectReturnResponse(CommonCode.SUCCESS,result);
    }

    /**
     * 广告
     * @return
     */
    @RequestMapping(value = "/findAd",method = RequestMethod.GET)
    public QueryResponseResult findAd() {
        QueryResult result = new QueryResult();
        // 调用service的方法
        List<Slideshow> list = commodityService.findAd();
        result.setTotal(list.size());
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    /**
     * 为你推荐商品
     * @return
     */
    @RequestMapping(value = "/Recommend",method = RequestMethod.GET)
    public QueryResponseResult findRecommend() {
        QueryResult result = new QueryResult();
        // 调用service的方法
        List<Recommend> list = commodityService.findRecommend();
        int a =list.size();
        result.setTotal(a);
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }
}
