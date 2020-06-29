package cn.xgtd.controller;

import cn.xgtd.domain.homePage.PageView;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.ResultContent;
import cn.xgtd.response.Return.Results;
import cn.xgtd.service.PageViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *访问量
 * @author Kite
 * @date 2020/6/28
 */
@Controller
@RequestMapping("/PageViewController")
@ResponseBody
public class PageViewController {

    @Autowired
    PageViewService pageViewService;

    @RequestMapping(value = "/findPageView",method = RequestMethod.GET)
    public ResultContent findPageView(String startDate , String endDate){
        Results results = new Results();
        PageView pageView = pageViewService.findPageView(startDate,endDate);
        results.setData(pageView);
        return new ResultContent(CommonCode.SUCCESS,results);
    }
}
