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

     //void addReply(String reply);


    /**
     * 新增评价图片数组
     * @param commentImages 图片对象集合
     * @return
     */
     Integer addCommentImage(@Param("commentImages") List commentImages);



    /**
     * 查询商品评论
     * @param productId 商品id
     * @param start 查询开始
     * @param pageSize 每页查询数量
     * @return
     */
     List<ProductComment> findAllComment(@Param("productId")Integer productId ,@Param("commentType")Integer commentType,@Param("start")Integer start,@Param("pageSize") Integer pageSize);
}
