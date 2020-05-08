package cn.itcast.service.impl;

import cn.itcast.dao.CommentDao;
import cn.itcast.dao.OrderDao;
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
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * @author Kite
 * @date 2020/5/1
 */
@Service
public class CommentServiceImpl implements CommentService {

    /**订单持久层**/
    @Autowired
    OrderDao orderDao;
    //七牛云存储空间名称
    private static final  String space="mugebl";
    //base64t图片前缀
    private static final String base64Prefix = "data:image/jpg;base64,";
    //base64视频前缀
    private static final String base64Vide="data:video/mp4;base64";

    @Autowired
    CommentDao commentDao;
    /**
     * 新增商品评论
     * @param productComment 评论对象
     * @return
     */
    @Override
    public Integer addComment(ProductComment productComment) throws IOException {

        //是否有视频标志位
        Boolean sign = false;

        //文件数组 0为视频 <0 为图片
        String[] files = productComment.getFiles();


        //判断文件 [0]为是否有图片 0为没有 1为有 [1]为是否有视频 0为没有 1为有
        Integer[] judgmentFiles = judgmentFiles(files);
        if (judgmentFiles!=null ){
            if(judgmentFiles[1]==1){
                //前缀 为   data:image/jpeg;base64 则为图片
                String prefix =  files[0];
                sign=true;
                String video = updateVideo(prefix);
                productComment.setVideoComment(video);
            }


            //设置当前时间为评论时间
            productComment.setCommentTime(new Date());
            //新增评论基本信息
            commentDao.addComment(productComment);
            //修改评论状态
            orderDao.updateProductState(null,4,productComment.getPurchaseId());

            //循环起点 有视频从1开始 无视频从0开始
            Integer begin = 0;
            //是否有视频
            if ( sign == true ){
                begin=1;
            }

            //判断是否有图片
            if (judgmentFiles!=null & judgmentFiles[0]==1){
                List<CommentImage> commentImages =updateImages(files,begin,productComment.getCommentId());
                commentDao.addCommentImage(commentImages);
            }

        }else {
            //设置当前时间为评论时间
            productComment.setCommentTime(new Date());
            //新增评论基本信息
            commentDao.addComment(productComment);
            //修改评论状态
            orderDao.updateProductState(null,4,productComment.getPurchaseId());
        }

        return 1;
    }

    /**
     * 判断是否有视频
     * @param files
     * @return  [0]为是否有图片 0为没有 1为有 [1]为是否有视频 0为没有 1为有
     */
    public Integer[] judgmentFiles(String[] files ){
        Integer[] result=new Integer[2];
        result[0]=0;
        result[1]=0;

        //是否有视频标志位
        Boolean sign = false;
        //判断文件是否为空
        if (files==null || files.length==0){
            result=null;
            return result;
        }
        //前缀 为   data:image/jpeg;base64 则为图片
        String prefix =  files[0];
        //判断文件第一个是否是视频
        String  prefixs=prefix.substring(0,prefix.indexOf(","));
        if (prefixs.equals(base64Vide)){
            sign=true;
            result[1]=1;
        }
        if (files.length>0 && sign == false || files.length>1){
            result[0]=1;
        }
        return result;
    }

    /**
     * 压缩上传视频
     * @param prefix  base64视频
     * @return 视频上传成功后的地址
     * @throws IOException
     */
    public String updateVideo(String prefix) throws IOException {
        //压缩视频 且返回视频地址 uuid为视频文件名
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        //base64转InputStream
        InputStream inputStream = this.base64InputStream(prefix);
        String video = UploadVideoUtil.UploadVideoUtil(space,uuid,inputStream);
        return video;
    }

    /**
     *  压缩上传图片
     * @param files base64数组
     * @param begin 循环开始 有视频从1开始 无视频从0开始
     * @param commentId 购买编号
     * @return 上传成功后图片地址地址 购买编号集合
     * @throws IOException
     */
    public List updateImages(String[] files,Integer begin,Integer commentId) throws IOException {
        //新增评论图片
        List<CommentImage> commentImages= new ArrayList();
        for (int i = begin; i <files.length ; i++) {
            String uuids = UUID.randomUUID().toString().replaceAll("-","");
            //base64转InputStream
            InputStream inputStream = this.base64InputStream(files[i].substring(0,files[i].length()-base64Prefix.length()));
            //压缩图片 上传图片至七牛云 返回图片地址
            String Image = UploadPicturesUtil.UploadPicturesUtil(space,inputStream,uuids);
            CommentImage  commentImage=new CommentImage();
            commentImage.setCommentId(commentId);
            commentImage.setCommentPicture(Image);
            commentImages.add(commentImage);
        }
        return commentImages;
    }


    /**
     * base64转InputStream
     * @param prefix base64
     * @return InputStream
     * @throws IOException
     */
    @Override
    public InputStream base64InputStream(String prefix) throws IOException {
        //base64字符串
        String file = null;
        int prefixSize =prefix.indexOf(",")+1;
        file = prefix.substring(prefixSize);
        //将字符串转换为byte数组
        byte[] bytes = new BASE64Decoder().decodeBuffer(file.trim());
        //转化为输入流
        ByteArrayInputStream inputStream = new ByteArrayInputStream(bytes);
        return inputStream;
    }
}
