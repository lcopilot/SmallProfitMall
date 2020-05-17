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
        //查询足迹信息
        List<SearchProduct> footprint = searchProductService.findPrimaryProduct(PrimaryContent,currentPage,pageSize);
        //查询总数量跟总页数 数组0为总数量 1 为总页数
       // Integer[] totalPage=searchProductService.fendTotalPage(PrimaryContent,pageSize);
        pagination.setList(footprint);
//        pagination.setTotalCount(totalPage[0].longValue());
//        pagination.setTotalPage((int) totalPage[1].longValue());

                pagination.setTotalCount((long) 10);
                pagination.setTotalPage(10);


        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }
}
