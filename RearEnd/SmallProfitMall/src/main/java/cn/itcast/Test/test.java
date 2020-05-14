package cn.itcast.Test;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Iterator;

/**
 * @author Kite
 * @date 2020/5/5
 */
public class test {
    public static void main(String[] args) throws IOException {
        String filePath = "C:\\Users\\86185\\Desktop\\ys\\mmexport1586163224574.jpg";
        File file = new File(filePath);
        ImageInputStream iis = ImageIO.createImageInputStream(file);
        Iterator iter = ImageIO.getImageReaders(iis);
        if (!iter.hasNext()) {//文件不是图片
            System.out.println("此文件不为图片文件");
        }else {
            System.out.println("是");
        }
    }


}
