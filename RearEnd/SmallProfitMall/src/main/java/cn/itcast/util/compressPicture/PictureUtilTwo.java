package cn.itcast.util.compressPicture;

import java.io.File;
import java.io.IOException;
//工具类压缩图片
public class PictureUtilTwo {

    public static void pictureUtilTwo(String importSite, String outputSite) throws IOException {
        //需要压缩的图片地址     aaa.jpg为需要压缩的图片
        File customaryFile = new File("E:\\a.png");
        //压缩过后输出的路径地址    ddd.jpg 可进行设置为任意名称
        File compressAfter = new File("C:\\Users\\86185\\Desktop\\a.MP4");
        imagesFiler.imageResize(customaryFile,compressAfter,1200,2500,0.8f);
    }

    public static void main(String[] args) throws IOException {
        PictureUtilTwo.pictureUtilTwo("a","a");
    }

}
