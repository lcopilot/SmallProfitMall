package cn.itcast.controller;

import cn.itcast.dao.CommentDao;
import cn.itcast.domain.ProductDatails.CommentQuantity;
import cn.itcast.domain.ProductDatails.ProductComment;
import cn.itcast.domain.ProductDatails.SecondComment;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.listFootprint.Pagination;
import cn.itcast.response.listFootprint.ResponsePagination;
import cn.itcast.response.objectReturn.ObjectReturn;
import cn.itcast.response.objectReturn.ObjectReturnResponse;
import cn.itcast.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

/**
 * 商品评论控制层
 * @author Kite
 * @date 2020/5/1
 */
@Controller
@RequestMapping("/CommentController")
@ResponseBody
public class CommentController {

    /**评论service**/
    @Autowired
    CommentService commentService;

    @Autowired
    CommentDao commentDao;

    /**
     * 商品添加评论
     * @param productComment 评论对象
     * @return
     */
    @RequestMapping(value = "/addComment",method = RequestMethod.POST)
    public QueryResponseResult addComment(ProductComment productComment) throws IOException {
        Integer result = commentService.addComment(productComment);
        if (result>=1){
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }
        return new QueryResponseResult(CommonCode.FAIL,null);
    }

    /**
     * 查询商品评论
     * @param productId 商品id
     * @param commentType 评论类型 0 为查全部 1查有图 2查有视频 3为查追评 4为好评 5为中评 6为差评
     * @param currentPage 查询当前页
     * @param pageSize 每次查询数量
     * @return
     */
    @RequestMapping(value = "/findComment",method = RequestMethod.GET)
    public ResponsePagination findComment(Integer productId, Integer commentType, Integer currentPage , Integer pageSize){
        Pagination pagination = new Pagination();

        if (currentPage==null){
            currentPage=1;
        }
        //判断传入每页显示数量 为空则默认为8条
        if (pageSize==null){
            pageSize=8;
        }

        List<ProductComment> productComments = commentService.findComment(productId,commentType,currentPage,pageSize);
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=commentService.fendTotalPage(productId,commentType,pageSize);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage((int) totalPage[1].longValue());
        pagination.setList(productComments);
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }

    /**
     * 查询评论数量
     * @param productId 商品id
     * @return
     */
    @RequestMapping(value = "findCommentQuantity/{productId}",method = RequestMethod.GET )
    public ObjectReturnResponse findCommentQuantity(@PathVariable("productId") Integer productId){
        ObjectReturn objectReturn = new ObjectReturn();
        CommentQuantity commentQuantity = commentService.findCommentQuantity(productId);
        objectReturn.setObject(commentQuantity);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

    /**
     * 商品添加追评
     * @param secondComment 追评对象
     * @return
     */
    @RequestMapping(value = "/addSecondComment",method = RequestMethod.POST)
    public QueryResponseResult addSecondComment(@RequestBody SecondComment secondComment) throws IOException {
        Integer result = commentService.addSecondComment(secondComment);
        if (result>=1){
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }
        return new QueryResponseResult(CommonCode.FAIL,null);
    }

}
