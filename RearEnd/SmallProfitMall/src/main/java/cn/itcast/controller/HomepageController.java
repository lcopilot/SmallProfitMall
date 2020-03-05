package cn.itcast.controller;

import cn.itcast.domain.*;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.HomepageService;
import cn.itcast.util.RedisUtil;
import java.util.ArrayList;
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
    QueryResult result;
    /**
     * 轮播图
     * @return
     */
    @RequestMapping("/findRotationChart")
    public QueryResponseResult findRotationChart() {
        // 调用service的方法
        List<RotationChart> list = homepageService.findRotationChart();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    //商品分类导航栏
    @RequestMapping("/findNavigation1")
    public QueryResponseResult findNavigation(){
        // 调用service的方法
        List<Navigation> list = homepageService.findNavigation();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
     }

    //商品分类导航栏2
    @RequestMapping("/findNavigation2")
    public QueryResponseResult findNavigation2(){
        // 调用service的方法
        List<Navigation_2> list = homepageService.findNavigation2();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    //主页右侧图标
    @RequestMapping("/icon")
    public QueryResponseResult findIcon(){
        // 调用service的方法
        List<Icon> list = homepageService.findIcon();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }


    //商品导航栏详细
    @RequestMapping("/navigationInDetail")
    public QueryResponseResult cs(){
        Classification classification = homepageService.navigationInDetail();
        List<Classification> logins= Arrays.asList(classification);
        result.setList(logins);

        return new QueryResponseResult(CommonCode.SUCCESS,result);
    }

}
