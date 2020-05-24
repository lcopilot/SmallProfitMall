package cn.itcast.util.compressPicture;

import cn.itcast.util.picture.SimpleUpload;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import static cn.itcast.util.compressPicture.PathUtil.getImgBasePath;

public class UploadPicturesUtil {
    /**
     *  压缩图片 上传图片到七牛云
     * @param space 七牛云上传空间
     * @param ins 图片InputStream
     * @param userId 用户id
     * @return 图片地址
     * @throws IOException
     */
    public static String UploadPicturesUtil(String space,InputStream ins,String userId) throws IOException {


        //输出文件地址
        String outputSize = getImgBasePath()+"/"+userId+".JPEG" ;
        File file = new File(getImgBasePath());

        String os = System.getProperty("os.name");
        //3.调用String类的常用成员方法判断并替换
        if(os.toLowerCase().startsWith("win")) {
            //判断文件夹是否存在
            if(!file.exists()){
                // 创建该文件夹
                file.mkdirs();
            }
        }else {
            if(!file.exists()){
                // 创建该文件夹
                file.mkdirs();
                //设置写权限，windows下不用此语句
                file.setWritable(true, false);
            }
        }

        //调用压缩图片
        PictureUtilOne.pictureUtilOne(ins,outputSize);

        //上传文件
        SimpleUpload uploading = new SimpleUpload();
        uploading.overrideUpload(outputSize,userId,space);
        //根据地址删除文件图片
        PathUtil.deleteFile(outputSize);
        //返回图片地址 + 时间戳 用于覆盖上传更新
        String site =" http://img.isdfmk.xyz/"+userId+"?t="+(System.currentTimeMillis() / 1000);
        return site;
    }

}
