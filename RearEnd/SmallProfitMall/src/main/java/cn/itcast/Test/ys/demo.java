package cn.itcast.Test.ys;

import cn.itcast.util.compressPicture.PathUtil;
import cn.itcast.util.compressPicture.PictureUtilOne;
import cn.itcast.util.picture.SimpleUpload;
import org.apache.ibatis.io.Resources;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import static cn.itcast.util.compressPicture.PathUtil.getImgBasePath;


public class demo {

    @Test
    public void  a() throws IOException {
        PictureUtilOne a =new PictureUtilOne();
        InputStream in = Resources.getResourceAsStream("C:\\Users\\86185\\Desktop\\5YGCJPRAT7R)TC{VFFA4(_1.png");
        System.out.println(in);
        File file = new File(getImgBasePath());
        if(!file.exists()){
            // 创建该文件夹
            file.mkdirs();
        }

        String uuid = UUID.randomUUID().toString().replace("-", "");
        a.pictureUtilOne(in,getImgBasePath()+"\\"+uuid+".jpg");
//        File file1 =new File(getImgBasePath()+"\\"+uuid);
//        String fileName=file1.getName();
//        String[] token = fileName.split(".");
//        String pf = token[1];
//        SimpleUpload c = new SimpleUpload();
//        System.out.println(getImgBasePath()+"\\"+uuid+pf);
        System.out.println(getImgBasePath()+"\\"+uuid+""+"-----"+uuid+"------"+"mugebl");
     //  c.overrideUpload(getImgBasePath()+"\\"+uuid+".JPEG",uuid,"mugebl");

        System.out.println();
//        PathUtil.deleteFile("\\"+uuid+".JPEG");
    }


}

