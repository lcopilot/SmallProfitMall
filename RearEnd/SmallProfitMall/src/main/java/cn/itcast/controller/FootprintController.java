package cn.itcast.controller;

import cn.itcast.domain.footprint.Footprint;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.listFootprint.Pagination;
import cn.itcast.response.listFootprint.ResponsePagination;
import cn.itcast.service.FootprintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 足迹控制层
 * @author kity
 */
@Controller
@RequestMapping("/FootprintController")
@ResponseBody
public class FootprintController {

    /**足迹业务层**/
    @Autowired
    FootprintService footprintService;

    /**
     * 添加足迹
     * @param footprint 足迹对象
     * @return
     */
    @RequestMapping(value = "/addShoppingCart",method = RequestMethod.POST)
    public QueryResponseResult addShoppingCart(@RequestBody Footprint footprint) {
        if(footprint==null){
            //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        int redis =footprintService.addFootprint(footprint);
        if(redis == 1 ){
            //添加成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }else {
            //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
    }

    /**
     *  查询足迹
     * @param userId 用户id
     * @param currentPage 查询当前页
     * @param pageSize 查询页数
     * @return TotalPage[0]为总数量 TotalPage[1]为种总页数
     */
    @RequestMapping(value = "/fendFootprint",method = RequestMethod.GET)
    public ResponsePagination fendFootprint(String userId,Integer currentPage , Integer pageSize){
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
        List<Footprint> footprint = footprintService.fendFootprint(userId,currentPage,pageSize);
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=footprintService.fendTotalPage(userId,pageSize);
        pagination.setList(footprint);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage((int) totalPage[1].longValue());
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }

    /**
     * 删除足迹
     * @param userId 用户id
     * @param footprintId 足迹id
     * @param deleteAll 是否为删除全部 true为删除全部 false为删除单个
     * @return
     */
    @RequestMapping(value = "/deleteFootprint",method=RequestMethod.DELETE)
    public ResponsePagination deleteFootprint(String userId,Integer footprintId ,Boolean deleteAll){
      Integer request = footprintService.deleteFootprint(userId,footprintId, deleteAll);
      if (request>0){
          return new ResponsePagination(CommonCode.SUCCESS,null);
      }
      return new ResponsePagination(CommonCode.FAIL,null);
    }


}
