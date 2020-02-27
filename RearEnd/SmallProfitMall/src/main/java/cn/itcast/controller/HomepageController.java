package cn.itcast.controller;

import cn.itcast.domain.Navigation;
import cn.itcast.domain.Navigation_2;
import cn.itcast.domain.RotationChart;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.HomepageService;
import cn.itcast.util.RedisService;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/homepageController")
@ResponseBody
public class HomepageController {


    @Autowired
    HomepageService homepageService;

    @Autowired
    RedisService redisService;

    /**
     * 轮播图
     * @return
     */
    @RequestMapping("/findRotationChart")
    public QueryResponseResult findRotationChart() {
        // 调用service的方法
        List<RotationChart> list = homepageService.findRotationChart();
        QueryResult<RotationChart> result = new QueryResult<>();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    //商品分类导航栏
    @RequestMapping("/findNavigation")
    public QueryResponseResult findNavigation(){
        // 调用service的方法
        List<Navigation> list = homepageService.findNavigation();
        QueryResult<Navigation> result = new QueryResult<>();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
     }

    //商品分类导航栏2
    @RequestMapping("/findNavigation2")
    public QueryResponseResult findNavigation2(){
        // 调用service的方法
        List<Navigation_2> list = homepageService.findNavigation2();
        QueryResult<Navigation_2> result = new QueryResult<>();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }
    //商品分类导航栏2
    @RequestMapping("/a")
    public QueryResponseResult fff(){
        ArrayList<Object> list1 = new ArrayList<>();
        list1.add("sdfsdfgsdfasdf");
        redisService.lSet("fsdfsd",list1);
        List<Object> fsdfsd = redisService.lGet("fsdfsd", 0, -1);
        System.out.println(fsdfsd);
        // 调用service的方法
        List<Navigation_2> list = homepageService.findNavigation2();
        QueryResult<Navigation_2> result = new QueryResult<>();
        result.setList(list);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

}
