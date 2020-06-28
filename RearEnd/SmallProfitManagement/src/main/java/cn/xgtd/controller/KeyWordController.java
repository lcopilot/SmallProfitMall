package cn.xgtd.controller;

import cn.xgtd.domain.homePage.KeyWord;
import cn.xgtd.domain.product.ProductDetails;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.ResultContent;
import cn.xgtd.response.Return.Results;
import cn.xgtd.response.pagination.Pagination;
import cn.xgtd.response.pagination.ResponsePagination;
import cn.xgtd.service.KeyWordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 关键词控制层
 * @author Kite
 * @date 2020/6/28
 */
@Controller
@RequestMapping("/KeyWordController")
@ResponseBody
public class KeyWordController {

    @Autowired
    KeyWordService keyWordService;


    /**
     * 搜索关键字排行榜
     * @param currentPage 当前页
     * @param pageSize 每页数量
     * @return
     */
    @RequestMapping(value = "/findKeyWord/{currentPage}/{pageSize}",method = RequestMethod.GET)
    public ResponsePagination findKeyWord(@PathVariable("currentPage") Integer currentPage, @PathVariable("pageSize") Integer pageSize){
        if (currentPage==null || currentPage==0){
            currentPage=1;
        }
        //判断传入每页显示数量 为空则默认为8条
        if (pageSize==null || pageSize == 0){
            pageSize=8;
        }
        Pagination pagination = new Pagination();
        List<KeyWord> basicProducts = keyWordService.findKeyWord(currentPage,pageSize);
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=keyWordService.fendTotalPage(pageSize);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage((int) totalPage[1].longValue());
        pagination.setList(basicProducts);
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }
}
