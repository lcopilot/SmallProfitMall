package cn.itcast.service;

import cn.itcast.domain.productComment.CommentQuantity;
import cn.itcast.domain.ProductDatails.ProductComment;
import cn.itcast.domain.productComment.SecondComment;

import java.io.IOException;
import java.util.List;

/**
 * 添加商品评论
 * @author Kite
 * @date 2020/5/1
 */
public interface CommentService {

    /**
     * 新增商品评论
     * @param productComment 评论对象
     * @return
     */
    public Integer addComment(ProductComment productComment) throws IOException;

    /**
     * 查询商品评论
     * @param productId 商品id
     * @param commentType 评论类型
     * @param currentPage 查询当前页
     * @param pageSize 每页查询数量
     * @return 评论对象
     */
    public List<ProductComment> findComment(Integer productId, Integer commentType, Integer currentPage , Integer pageSize);

    /**
     * 查询不同评论数量
     * @param productId 商品id
     * @return 数量对象
     */
    public CommentQuantity findCommentQuantity(Integer productId);


    /**
     * 添加追评
     * @param secondComment
     * @return
     */
    public Integer addSecondComment(SecondComment secondComment) throws IOException;

    /**
     * 查询分页数量
     * @param productId 商品id
     * @param commentType  评论类型
     * @param pageSize 每页查询数量
     * @return
     */
    public Integer[] fendTotalPage(Integer productId,Integer commentType ,Integer pageSize);


//
//    /**
//     *  base64转InputStream
//     * @param prefix base64
//     * @return InputStream
//     * @throws IOException
//     */
//    public InputStream base64InputStream(String prefix) throws IOException;

}
