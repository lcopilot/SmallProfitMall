package cn.itcast.service;

import cn.itcast.domain.ProductDatails.ProductComment;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

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
    public Integer addComment(ProductComment productComment,MultipartFile[] files) throws IOException;

}
