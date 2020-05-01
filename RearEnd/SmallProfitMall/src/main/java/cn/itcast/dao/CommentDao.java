package cn.itcast.dao;

import cn.itcast.domain.ProductDatails.ProductComment;

/**
 * 商品评论
 * @author Kite
 * @date 2020/5/1
 */
public interface CommentDao {

    public void addComment(ProductComment productComment);
}
