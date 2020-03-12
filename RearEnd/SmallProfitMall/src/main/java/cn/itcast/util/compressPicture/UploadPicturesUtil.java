package cn.itcast.util.compressPicture;

import cn.itcast.util.picture.SimpleUpload;
import org.apache.ibatis.io.Resources;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.UUID;

import static cn.itcast.util.compressPicture.PathUtil.getImgBasePath;

public class UploadPicturesUtil {
    public static String UploadPicturesUtil(InputStream ins,String uuid) throws IOException {
        PictureUtilOne pictureUtil = new PictureUtilOne();
        InputStream in =ins ;
        File file = new File(getImgBasePath());
        if(!file.exists()){
            // 创建该文件夹
            file.mkdirs();
        }
        pictureUtil.pictureUtilOne(in,getImgBasePath()+"\\"+uuid);
        SimpleUpload c = new SimpleUpload();
        c.overrideUpload(getImgBasePath()+"\\"+uuid+".JPEG",uuid,"mugebl");
        PathUtil.deleteFile("\\"+uuid+".JPEG");
        String site ="http://productdata.fhxasdsada.xyz/"+uuid+"?t="+new Date().getTime();
        return site;
    }

}
