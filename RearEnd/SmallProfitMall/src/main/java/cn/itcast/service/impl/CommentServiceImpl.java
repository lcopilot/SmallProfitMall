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
import sun.misc.BASE64Decoder;

import java.io.ByteArrayInputStream;
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
    //base64前缀
    private static final String base64Prefix = "data:image/jpeg;base64，";

    @Autowired
    CommentDao commentDao;
    /**
     * 新增商品评论
     * @param productComment 评论对象
     * @return
     */
    @Override
    public Integer addComment(ProductComment productComment) throws IOException {


        String[] files = productComment.getFiles();
        Integer result =0;



        if (files==null | files.length!=0){
            Boolean sign = false;

            //前缀 为   data:image/jpeg;base64 则为图片
            String prefix =  files[0];
            //判断文件第一个是否是视频
           String  prefixs=prefix.substring(0,base64Prefix.length());

            if (!prefixs.equals(base64Prefix)){
                sign=true;
                //压缩视频 且返回视频地址 uuid为视频文件名
                String uuid = UUID.randomUUID().toString().replaceAll("-","");
                //base64转InputStream
                InputStream inputStream = this.base64InputStream(prefix,true);
                String video = UploadVideoUtil.UploadVideoUtil(space,uuid,inputStream);
                //设置视频地址
                productComment.setVideoComment(video);
            }
            //循环起点 有视频从1开始 无视频从0开始
            Integer begin = 0;

            //是否有视频
            if ( sign == true ){
                begin=1;
            }
            //是否有图片
            Boolean ifVideo = false;
            if (files.length>0 && sign == false || files.length>1 && sign == true ){
                ifVideo =true;
            }
            if (ifVideo){
                //新增评论图片
                List<CommentImage> commentImages= new ArrayList();
                for (int i = begin; i <files.length ; i++) {
                    String uuids = UUID.randomUUID().toString().replaceAll("-","");
                    //base64转InputStream
                    InputStream inputStream = this.base64InputStream(files[i].substring(0,files[i].length()-base64Prefix.length()),false);
                    //压缩图片 上传图片至七牛云 返回图片地址
                    String Image = UploadPicturesUtil.UploadPicturesUtil(space,inputStream,uuids);
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

    //
    public ProductComment disposePictureVideo(ProductComment productComment){

        return null;
    }

    public InputStream base64InputStream(String prefix,Boolean ifVideo) throws IOException {

        //base64字符串
        String file = null;
        if (ifVideo){
            file = prefix.substring(base64Prefix.length()-1);
        }else {
            file = prefix.substring(base64Prefix.length());
        }
        //将字符串转换为byte数组
        byte[] bytes = new BASE64Decoder().decodeBuffer(file.trim());
        //转化为输入流
        ByteArrayInputStream inputStream = new ByteArrayInputStream(bytes);
        return inputStream;
    }
}
