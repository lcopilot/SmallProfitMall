package cn.itcast.controller;

import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.domain.searchProduct.SearchProduct;
import cn.itcast.response.CommonCode;
import cn.itcast.response.listFootprint.Pagination;
import cn.itcast.response.listFootprint.ResponsePagination;
import cn.itcast.service.SearchProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * 搜索商品控制层
 * @author Kite
 * @date 2020/5/16
 */
@Controller
@RequestMapping("/PrimaryProductController")
@ResponseBody
public class SearchProductController {

    /**收拾业务层**/
    @Autowired
    SearchProductService searchProductService;
    /**
     * 搜索商品
     * @param PrimaryContent 用户id
     * @param currentPage 当前页
     * @param pageSize 每页查询数量
     * @return
     */
    @RequestMapping(value = "/fendPrimaryProduct" ,method = RequestMethod.GET)
    public ResponsePagination fendPrimaryProduct(String  PrimaryContent, Integer currentPage , Integer pageSize){
        //判断传入开始页是否为空 为空则默认为第一页
        if (currentPage==null){
            currentPage=1;
        }
        //判断传入每页显示数量 为空则默认为8条
        if (pageSize==null){
            pageSize=8;
        }
        Pagination pagination = new Pagination();
        Map primaryProductMap = searchProductService.findPrimaryProduct(PrimaryContent," http://img.isdfmk.xyz/f92b9f8f372e445fb6564cdd57aa3c3e?t=1590307098",currentPage,pageSize);

        //查询的商品信息
        List<SearchProduct> primaryProduct = (List<SearchProduct>) primaryProductMap.get("searchProducts");
        Integer gradePrimary = (Integer) primaryProductMap.get("gradePrimary");
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=searchProductService.fendTotalPage(PrimaryContent,pageSize,gradePrimary);
        pagination.setList(primaryProduct);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage(totalPage[1]);
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }
}
