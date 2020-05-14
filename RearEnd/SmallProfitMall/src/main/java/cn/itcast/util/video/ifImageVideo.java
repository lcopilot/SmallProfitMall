package cn.itcast.util.video;

import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

/**
 * @author Kite
 * @date 2020/5/14
 */
public class ifImageVideo {
    /**
     * 判断是否是图片
     * @param inputStream 文件流
     * @return true为是图片 false为视频
     * @throws IOException
     */
    public static Boolean ifImageVideo(InputStream inputStream) throws IOException {
        ImageInputStream iis = ImageIO.createImageInputStream(inputStream);
        Iterator iter = ImageIO.getImageReaders(iis);
        //文件不是图片
        if (!iter.hasNext()) {
            return false;
        }else {
           return true;
        }

    }
}
