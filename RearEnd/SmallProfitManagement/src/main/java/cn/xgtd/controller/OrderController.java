package cn.xgtd.controller;

import cn.xgtd.domain.order.Order;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.pagination.Pagination;
import cn.xgtd.response.pagination.ResponsePagination;
import cn.xgtd.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 订单控制层
 * @author kity
 */
@Controller
@RequestMapping("/OrderController")
@ResponseBody
public class OrderController {

    @Autowired
    OrderService orderService;
    /**
     * 查询所有订单
     * @param currentPage 当前页
     * @param pageSize 每页数量
     * @return
     */
    @RequestMapping(value = "/findAllOrder",method = RequestMethod.GET)
    public ResponsePagination findAllOrder(Integer currentPage , Integer pageSize){
        //判断传入开始页是否为空 为空则默认为第一页
        if (currentPage==null | pageSize ==0){
            currentPage=1;
        }
        //判断传入每页显示数量 为空则默认为8条
        if (pageSize==null){
            pageSize=8;
        }
       List<Order> order = orderService.findAllOrder(currentPage,pageSize);
        Pagination pagination = new Pagination();
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=orderService.fendTotalPage(pageSize);
        pagination.setList(order);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage((int) totalPage[1].longValue());
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }
}
