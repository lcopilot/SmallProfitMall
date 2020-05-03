package cn.itcast.dao;

import cn.itcast.domain.ProductDatails.ProductComment;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 商品评论
 * @author Kite
 * @date 2020/5/1
 */
public interface CommentDao {

    /**
     * 新增商品评论
     * @param productComment 评论对象
     * @return
     */
     void addComment(ProductComment productComment);

    /**
     * 新增评价图片数组
     * @param  commentId 评价
     * @param commentImage 图片数组
     * @return
     */
     Integer addCommentImage(@Param("commentImages") List commentImages);
}
