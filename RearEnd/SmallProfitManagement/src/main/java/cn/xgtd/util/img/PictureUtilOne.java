package cn.xgtd.util.img;

import net.coobird.thumbnailator.Thumbnails;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Filter;

//压缩图片
public class PictureUtilOne {
    /**
     * 压缩图片
     * @param importSite 压缩地址
     * @param outputSite 压缩成功后返回地址
     * @throws IOException
     */
    public static void pictureUtilOne(String importSite, String outputSite) throws IOException {
        //输入要压缩图片的地址
        Thumbnails.of(importSite)
                .scale(1f)
                .outputQuality(0.5f)
                //输出图片压缩后的地址
                .toFile(outputSite);
    }

}
