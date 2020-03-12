package cn.itcast.util.compressPicture;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.imageio.ImageIO;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import static org.springframework.web.multipart.MultipartFile.*;

public class ImageUtil {
    //静态成员方法只能访问静态成员变量
    private static String basePath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
    private static final SimpleDateFormat S_DATE_FORMAT = new SimpleDateFormat("yyyyMMddHHmmss");
    private static final Random R5 = new Random();
    private static Logger logger = LoggerFactory.getLogger(ImageUtil.class);
    /**
     * 处理缩略图，并返回新生成图片的相对值路径
     * @param thumbnail
     * @param targetAddr
     * @return
     */
    public static String generateThumbnail(MultipartFile thumbnail, String targetAddr) {
        String realFileName = getRandomFileName(); //文件的新名字，不包含拓展名
        String extension = getFileExtension(thumbnail); //文件的拓展名
        makeDirPath(targetAddr);
        String relativeAddr = targetAddr + realFileName + extension;
        logger.debug("current relativeAddr is:" + relativeAddr);
        File dest = new File(PathUtil.getImgBasePath() + relativeAddr);
        logger.debug("current complete addr is:" + PathUtil.getImgBasePath() + relativeAddr);
        try {
            Thumbnails.of(thumbnail.getInputStream())
                    .size(200, 200).watermark(Positions.BOTTOM_RIGHT,
                    ImageIO.read(new File(basePath + "/watermark.jpg")),
                    0.30f).outputQuality(0.8f)
                    .toFile(dest);

            return relativeAddr; //没有异常，则返回相对的目录
        } catch (IOException e) {
            logger.error(e.toString());
            e.printStackTrace();
        }
        return "error"; //如果有异常，则返回提示信息
    }

    public static String generateNormalImg(CommonsMultipartFile thumbnail, String targetAddr) {
        String realFileName = getRandomFileName();
        String extension = getFileExtension(thumbnail);
        makeDirPath(targetAddr);
        String relativeAddr = targetAddr + realFileName + extension;
        File dest = new File(PathUtil.getImgBasePath() + relativeAddr);
        try {
            Thumbnails.of(thumbnail.getInputStream())
                    .size(1280, 720).watermark(Positions.BOTTOM_RIGHT,
                    ImageIO.read(new File(basePath + "/watermark.jpg")),
                    0.30f).outputQuality(0.8f)
                    .toFile(dest);
        } catch (IOException e) {
            throw new RuntimeException("创建普通图片失败：" + e.toString());
        }
        return relativeAddr;
    }


    public static List<String> generateNormalImgs(List<CommonsMultipartFile> imgs, String targetAddr) {
        int count = 0;
        List<String> relativeAddrList = new ArrayList<>();
        if (imgs != null && imgs.size() > 0) {
            makeDirPath(targetAddr);
            for (CommonsMultipartFile img : imgs) {
                String realFileName = getRandomFileName();
                String extension = getFileExtension(img);
                String relativeAddr = targetAddr + realFileName + count + extension;
                File dest = new File(PathUtil.getImgBasePath() + relativeAddr);
                count++;
                try {
                    Thumbnails.of(img.getInputStream()).size(600, 300).outputQuality(0.8f).toFile(dest);
                } catch (IOException e) {
                    throw new RuntimeException("创建图片失败：" + e.toString());
                }
                relativeAddrList.add(relativeAddr);
            }
        }
        return relativeAddrList;
    }


    /**
     * 创建目标文件所涉及到的目录
     * @param targetAddr
     */
    private static void makeDirPath(String targetAddr) {
        String realFileParentPath = PathUtil.getImgBasePath() + targetAddr;
        File dirPath = new File(realFileParentPath);
        //File类对象的exists()方法用于判断一个目录是否存在
        if(!dirPath.exists()) {
            dirPath.mkdirs();
        }
    }

    /**
     * 获取输入文件流的拓展名(.jpg )
     * @param
     * @return
     */
    private static String getFileExtension(MultipartFile thumbnail) {
        String originalFilename = thumbnail.getName();
        //String originalFilename = thumbnail.getOriginalFilename();
        return originalFilename.substring(originalFilename.lastIndexOf("."));
    }

    /**
     *   private体现封装性，static在本类中省略this直接通过方法名调用
     *   生成文件的随机名，当前时间yyyyMMddHHmmss格式+五位随机数
     * @return
     */
    private static String getRandomFileName(){
        // 获取随机的五位数
        int rannum = R5.nextInt(89999) + 10000;
        String nowTimeStr = S_DATE_FORMAT.format(new Date());
        return nowTimeStr + rannum;
    }

    //主函数的入口
    public static void main(String[] args) throws IOException {
        //获取当前线程的基础路径
        //String basePath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
        //类的静态方法和链式编程
        Thumbnails.of(new File("C:\\Users\\86185\\Desktop\\商场项目\\商场图片处理\\图片\\001e63e04f967e90.jpg"))
        .size(1280, 720).watermark(Positions.BOTTOM_RIGHT,
                                  ImageIO.read(new File(basePath + "/watermark.jpg")),
                                  0.25f).outputQuality(0.8f)
        .toFile("C:\\Users\\86185\\Desktop\\商场项目\\商场图片处理\\图片\\001e63e04f967e90.jpg");

    }

}