package cn.itcast.controller;

import cn.itcast.domain.ProductDatails.ProductComment;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * 商品评论控制层
 * @author Kite
 * @date 2020/5/1
 */
@Controller
@RequestMapping("/CommentControtroller")
@ResponseBody
public class CommentControtroller {

    /**评论service**/
    @Autowired
    CommentService commentService;

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
}
