package cn.itcast.service.impl;

import cn.itcast.dao.CommentDao;
import cn.itcast.domain.ProductDatails.CommentImage;
import cn.itcast.domain.ProductDatails.ProductComment;
import cn.itcast.service.CommentService;
import cn.itcast.util.compressPicture.UploadPicturesUtil;
import cn.itcast.util.fileType.FileTypeUtils;
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

        MultipartFile[] files = productComment.getFiles();
        Integer result =0;

        String importFileType="png";
        String importFileTypes = "jpg";

        if (files==null | files.length!=0){
            Boolean sign = false;
            //判断文件第一个是否是视频
            String fileType=FileTypeUtils.fileType(files[0].getInputStream());
            if (!importFileType.equals(fileType) && !importFileTypes.equals(fileType)){
                sign=true;
                //压缩视频 且返回视频地址 uuid为视频文件名
                String uuid = UUID.randomUUID().toString().replaceAll("-","");
                String video = UploadVideoUtil.UploadVideoUtil(space,uuid,files[0].getInputStream());
                //设置视频地址
                productComment.setVideoComment(video);
            }
            //循环起点 有视频从1开始 无视频从0开始
            Integer begin = 0;
            //循环次数 有视频减1 无视频不减
            Integer subtract =0;
            //是否有视频
            if ( sign == true ){
                begin=1;
                subtract=1;
            }
            //是否有图片
            Boolean ifVideo = false;
            if (files.length>0 && sign == false || files.length>1 && sign == true ){
                ifVideo =true;
            }
            if (ifVideo){
                //新增评论图片
                List<CommentImage> commentImages= new ArrayList();
                for (int i = begin; i <files.length-subtract ; i++) {
                    String uuids = UUID.randomUUID().toString().replaceAll("-","");
                    //压缩图片 上传图片至七牛云 返回图片地址
                    String Image = UploadPicturesUtil.UploadPicturesUtil(space,files[i].getInputStream(),uuids);
                    CommentImage  commentImage=new CommentImage();
                    commentImage.setCommentId(productComment.getCommentId());
                    commentImage.setCommentPicture(Image);
                    commentImages.add(commentImage);
                }
                commentDao.addCommentImage(commentImages);
            }

        }
        //设置当前时间为评论时间
        productComment.setCommentTime(new Date());
        //新增评论基本信息
        commentDao.addComment(productComment);
        return 1;
    }
}
