package cn.xgtd.controller;

import cn.xgtd.domain.homePage.*;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.ResultContent;
import cn.xgtd.response.Return.Results;
import cn.xgtd.service.SalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 销售额
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
    @RequestMapping(value = "/findSalesRanking",method = RequestMethod.GET)
    public ResultContent findSalesRanking(Integer quantity){
        if (quantity==null){
            quantity=7;
        }
        List<SalesRanking> salesRankingList =  salesService.findSalesRanking(quantity);
        Results results = new Results();
        results.setData(salesRankingList);
        return new ResultContent(CommonCode.SUCCESS,results);
    }

    /**
     * 查询销售额
     * @param gran 查询类型
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @return
     */
    @RequestMapping(value = "/findSalesDate",method = RequestMethod.GET)
    public ResultContent findSalesDate(String gran, String startDate , String endDate ){
        List<DataDate> salesRankingList =  salesService.findSalesDate(gran,startDate,endDate);
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

    /**
     * 查询销售额
     * @return
     */
    @RequestMapping(value = "/findSalesCategoryTotal",method = RequestMethod.GET)
    public ResultContent findSalesCategoryTotal(){
        List<SalesCategory> salesRankingList =  salesService.findSalesCategoryTotal();
        Results results = new Results();
        results.setData(salesRankingList);
        return new ResultContent(CommonCode.SUCCESS,results);
    }
}
