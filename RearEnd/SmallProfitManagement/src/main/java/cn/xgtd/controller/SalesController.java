package cn.xgtd.controller;

import cn.xgtd.domain.homePage.KeyWord;
import cn.xgtd.domain.homePage.PayRecord;
import cn.xgtd.domain.homePage.Sales;
import cn.xgtd.domain.homePage.SalesRanking;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.ResultContent;
import cn.xgtd.response.Return.Results;
import cn.xgtd.service.SalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/28
 */
@Controller
@RequestMapping("/SalesController")
@ResponseBody
public class SalesController {
    @Autowired
    SalesService salesService;
    /**
     * 查询销售额
     * @return
     */
    @RequestMapping(value = "/findSales",method = RequestMethod.GET)
    public ResultContent findSales(){
        Results results = new Results();
        Sales keyWordList = salesService.findSales();
        results.setData(keyWordList);
        return new ResultContent(CommonCode.SUCCESS,results);
    }

    /***
     * 查询商品销量排行榜
     * @param quantity 排行榜商品数量
     * @return
     */
    @RequestMapping(value = "/findSalesRanking/{quantity}",method = RequestMethod.GET)
    public ResultContent findSalesRanking(@PathVariable("quantity")Integer quantity){
        List<SalesRanking> salesRankingList =  salesService.findSalesRanking(quantity);
        Results results = new Results();
        results.setData(salesRankingList);
        return new ResultContent(CommonCode.SUCCESS,results);
    }

    /**
     * 查询支付比数
     * @return
     */
    @RequestMapping(value = "/findPayRecord",method = RequestMethod.GET)
    public ResultContent findPayRecord(){
        PayRecord salesRankingList =  salesService.findPayRecord();
        Results results = new Results();
        results.setData(salesRankingList);
        return new ResultContent(CommonCode.SUCCESS,results);
    }
}
