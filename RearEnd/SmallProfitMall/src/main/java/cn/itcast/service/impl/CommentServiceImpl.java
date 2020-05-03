package cn.itcast.service.impl;

import cn.itcast.dao.CommentDao;
import cn.itcast.domain.ProductDatails.CommentImage;
import cn.itcast.domain.ProductDatails.ProductComment;
import cn.itcast.service.CommentService;
import cn.itcast.util.compressPicture.UploadPicturesUtil;
import cn.itcast.util.video.UploadVideoUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * @author Kite
 * @date 2020/5/1
 */
@Service
public class CommentServiceImpl implements CommentService {
    //七牛云存储空间名称
    private static final  String space="mugebl";


    @Autowired
    CommentDao commentDao;
    /**
     * 新增商品评论
     * @param productComment 评论对象
     * @return
     */
    @Override
    public Integer addComment(ProductComment productComment) throws IOException {
        Integer result =0;

        //创建图片流
        MultipartFile imageFile =null;
        InputStream fileInputStream = imageFile.getInputStream();
        MultipartFile videoFile=null;
        InputStream fileVideo= videoFile.getInputStream();

        String uuids = UUID.randomUUID().toString().replaceAll("-","");
        //压缩图片 上传图片至七牛云 返回图片地址
        String Image = UploadPicturesUtil.UploadPicturesUtil(space,fileInputStream,uuids);

        //压缩视频 且返回视频地址
        String uuid = UUID.randomUUID().toString().replaceAll("-","");

        String video = UploadVideoUtil.UploadVideoUtil(space,uuid,fileVideo);

        //新增评论基本信息
        commentDao.addComment(productComment);

        //新增图片信息
        List<CommentImage> commentImages= new ArrayList();
        for(String commentPicture:productComment.getCommentPicture() ){
            CommentImage  commentImage=new CommentImage();
            commentImage.setCommentId(productComment.getCommentId());
            commentImage.setCommentPicture(commentPicture);
            commentImages.add(commentImage);
        }
        result+=commentDao.addCommentImage(commentImages);
        return result;
    }
}
