package cn.itcast.controller;

import cn.itcast.dao.CommentDao;
import cn.itcast.domain.ProductDatails.ProductComment;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

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
     * @param productComment
     * @return
     */
    @RequestMapping(value = "/addComment",method = RequestMethod.POST)
    public QueryResponseResult addComment(@RequestBody ProductComment productComment) throws IOException {
        Integer result = commentService.addComment(productComment);
        if (result>=1){
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }
        return new QueryResponseResult(CommonCode.FAIL,null);
    }

    /**
     * 查询商品评论
     * @return
     */
    @RequestMapping(value = "/findComment/{commentType}",method = RequestMethod.GET)
    public QueryResponseResult findComment(@PathVariable("commentType") Integer commentType){
        QueryResult queryResult = new QueryResult();
        queryResult.setList(commentDao.findAllComment(10006,commentType,0,10));
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }
}
