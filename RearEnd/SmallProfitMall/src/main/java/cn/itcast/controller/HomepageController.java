package cn.itcast.controller;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.*;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.HomepageService;
import cn.itcast.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/homepageController")
@ResponseBody
public class HomepageController {


    @Autowired
    HomepageService homepageService;

    @Autowired
    RedisUtil redisUtil;

    @Autowired
    HomepageDao homepageDao;

    /**
     * 查询轮播图
     * @return
     */
    @RequestMapping("/findRotationChart")
    public QueryResponseResult findRotationChart() {
        QueryResult result = new QueryResult();
        // 调用service的方法
        List<RotationChart> list = homepageService.findRotationChart();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }


    /**
     * 搜索栏下导航分类
     * @return
     */
    @RequestMapping("/findNavigation2")
    public QueryResponseResult findNavigation2(){
        QueryResult result = new QueryResult();
        // 调用service的方法
        List<Classify> list = homepageService.findNavigation2();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    /**
     * 主页右侧图标
     * @return
     */
    @RequestMapping("/icon")
    public QueryResponseResult findIcon(){
        QueryResult result = new QueryResult();
        // 调用service的方法
        List<Icon> list = homepageService.findIcon();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }


    /**
     * 商品导航栏详细
     * @return
     */
    @RequestMapping("/navigationInDetail")
    public QueryResponseResult navigationInDetail(){
        QueryResult result = new QueryResult();
        List<ProductCategory> productDetailsResults=  homepageService.findProductCategory();
        result.setList(productDetailsResults);
        return new QueryResponseResult(CommonCode.SUCCESS,result);
    }

}
