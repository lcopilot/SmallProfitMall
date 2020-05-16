package cn.itcast.controller;

import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.domain.footprint.Footprint;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.listFootprint.Pagination;
import cn.itcast.response.listFootprint.ResponsePagination;
import cn.itcast.service.EvaluationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
/**
 * 收藏控制层
 * @author kity
 */
@Controller
@RequestMapping("/EvaluationController")
@ResponseBody
public class FavoriteController {
    @Autowired
    EvaluationService evaluationService;

    /**
     * 添加收藏
     * @param evaluation
     * @return
     */
    @RequestMapping(value = "/addEvaluation",method = RequestMethod.POST)
    public QueryResponseResult addEvaluation(@RequestBody Evaluation evaluation) {
        if(evaluation==null){
            //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        int redis =evaluationService.addEvaluation(evaluation);
        if(redis == 1 ){
            //添加成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }else {
            //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
    }

    /**
     * 查询用户所有收藏商品
     * @param userId 用户id
     * @param currentPage 当前页
     * @param pageSize 每页查询数量
     * @return
     */
    @RequestMapping(value = "/fendFavorite" ,method = RequestMethod.GET)
    public ResponsePagination fendFavorite(String userId,Integer currentPage , Integer pageSize){
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
        List<Evaluation> footprint = evaluationService.fendFavorite(userId,currentPage,pageSize);
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=evaluationService.fendTotalPage(userId,pageSize);
        pagination.setList(footprint);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage((int) totalPage[1].longValue());
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }

    /**
     * 删除收藏接口
     * @param userId 用户id
     * @param evaluationId 足迹id
     * @param deleteAll 是否为删除全部 true为删除全部 false为删除单个
     * @return
     */
    @RequestMapping(value = "/deleteFavorite",method=RequestMethod.DELETE)
    public ResponsePagination deleteFavorite(String userId,Integer evaluationId,Boolean deleteAll){
        Integer request = evaluationService.deleteFootprint(userId,evaluationId,deleteAll);
        if (request>0){
            return new ResponsePagination(CommonCode.SUCCESS,null);
        }
        return new ResponsePagination(CommonCode.FAIL,null);
    }
}
