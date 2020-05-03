package cn.itcast.util.compressPicture;

import net.coobird.thumbnailator.Thumbnails;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Filter;

//架包压缩图片
public class PictureUtilOne {
    public static void pictureUtilOne(InputStream importSite, String outputSite) throws IOException {
        //输入要压缩图片的地址
        Thumbnails.of(importSite)
                .scale(1f)
                .outputQuality(0.5f)
                //输出图片压缩后的地址
                .toFile(outputSite);
    }

}
