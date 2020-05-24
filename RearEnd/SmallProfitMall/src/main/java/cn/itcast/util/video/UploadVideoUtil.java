package cn.itcast.util.video;
import cn.itcast.util.compressPicture.PathUtil;
import cn.itcast.util.picture.SimpleUpload;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import static cn.itcast.util.compressPicture.PathUtil.getImgBasePath;

/**
 * @author Kite
 * @date 2020/5/2
 */
public class UploadVideoUtil {
    /**
     * 上传视频到七牛云
     * @param space 要上传到七牛云的空间
     * @param kay 上传名称
     * @param ins 视频流
     * @return 视频地址
     * @throws IOException
     */
    public static String UploadVideoUtil(String space, String kay,InputStream ins) throws IOException {
        //上传文件地址
        String fileSite = getImgBasePath()+"/";
        File file = new File(getImgBasePath());
        String os = System.getProperty("os.name");
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

        //调用压缩视频 返回压缩成功后地地址
        String uploadingSite =  ConvertVideo.convert(fileSite,ins);
        //创建上传七牛云对象
        SimpleUpload uploading = new SimpleUpload();
        //上传文件
         uploading.overrideUpload(uploadingSite,kay,space);
        // 删除文件视频
        PathUtil.deleteFile(uploadingSite);

        String site =" http://img.isdfmk.xyz/"+kay;
        return site;
    }
}
