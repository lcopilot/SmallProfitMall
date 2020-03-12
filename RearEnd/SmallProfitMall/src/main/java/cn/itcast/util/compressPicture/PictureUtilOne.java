package cn.itcast.util.compressPicture;

import net.coobird.thumbnailator.Thumbnails;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.logging.Filter;

//架包压缩图片
public class PictureUtilOne {
    public void pictureUtilOne(String importSite, String outputSite) throws IOException {
        Thumbnails.of(importSite)   //输入要压缩图片的地址
                .scale(1f)
                .outputQuality(0.5f)
                .toFile(outputSite);    //输出图片压缩后的地址
    }

}
