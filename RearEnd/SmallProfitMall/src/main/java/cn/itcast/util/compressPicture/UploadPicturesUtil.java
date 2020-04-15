package cn.itcast.util.compressPicture;

import cn.itcast.util.picture.SimpleUpload;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import static cn.itcast.util.compressPicture.PathUtil.getImgBasePath;
//修改头像
public class UploadPicturesUtil {
    public static String UploadPicturesUtil(InputStream ins,String uuid) throws IOException {
        SimpleUpload uploading = new SimpleUpload();
        PictureUtilOne pictureUtil = new PictureUtilOne();
        //输出文件地址
        String outputSize =getImgBasePath()+"\\"+uuid+".JPEG" ;
        //七牛云存储空间
        String space="mugebl";
        //用户id
        String userId=uuid;
        //文件流
        InputStream in =ins ;
        File file = new File(getImgBasePath());
        //判断文件夹是否存在
        if(!file.exists()){
            // 创建该文件夹
            file.mkdirs();
        }
        //调用压缩图片
        pictureUtil.pictureUtilOne(in,outputSize);
        //上传文件
        uploading.overrideUpload(outputSize,userId,space);
        //根据地址删除文件图片
        PathUtil.deleteFile(outputSize);
        //返回图片地址
        String site =" http://img.fhxasdsada.xyz/"+userId+"?t="+new Date().getTime();
        return site;
    }

}
