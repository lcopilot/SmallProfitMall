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
        String outputSize =getImgBasePath()+"\\"+uuid+".JPEG" ;   //输出文件地址
        String space="mugebl";  //七牛云存储空间
        String userId=uuid;     //用户id
        InputStream in =ins ;   //文件流
        File file = new File(getImgBasePath());
        if(!file.exists()){ //判断文件夹是否存在
            // 创建该文件夹
            file.mkdirs();
        }
        pictureUtil.pictureUtilOne(in,outputSize);      //压缩图片
        uploading.overrideUpload(outputSize,userId,space);   //上传文件

        PathUtil.deleteFile(outputSize);                    //根据地址删除文件图片
        String site =" http://img.fhxasdsada.xyz/"+userId+"?t="+new Date().getTime();//返回图片地址
        return site;
    }

}
