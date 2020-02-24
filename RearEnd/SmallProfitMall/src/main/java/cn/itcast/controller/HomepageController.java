package cn.itcast.controller;

import cn.itcast.domain.RotationChart;
import cn.itcast.domain.User;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.HomepageService;
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

    /**
     * 查询所有方法
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

}
