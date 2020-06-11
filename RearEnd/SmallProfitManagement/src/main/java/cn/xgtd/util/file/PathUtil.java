package cn.xgtd.util.file;

import java.io.File;

/**
 *  根据不同操作系统获取文件上传路径
 *
 */
public class PathUtil {
    //1.获取当前操作系统的分隔符
    private static String separator = System.getProperty("file.separator");
    public static String getImgBasePath() {
        //2.获取当前操作系统的名称
        String os = System.getProperty("os.name");
        String basePath = "";
        //3.调用String类的常用成员方法判断并替换
        if(os.toLowerCase().startsWith("win")) {
            basePath = "D:/javaweb";
        }else {
            basePath = "/tmp/smallprofit";
        }
        basePath = basePath.replace("/", separator);
        return basePath;
    }


    // 根据shopId分配不同的上传目录，在ShopServiceImpl中引用
    public static String getShopImagePath(Integer shopId) {
        // 获取当前操作系统的名称
        String os = System.getProperty("os.name");
        String imagePath = "o2o-upload/images/item/shop/" + shopId +"/";
        if(os.toLowerCase().startsWith("win")) {
            imagePath = imagePath.replace("/", "\\");
        }else {
            imagePath = imagePath.replace("/", "/");
        }
        // 返回不包含文件名的相对目录路径
        return imagePath;
    }

    //删除文件夹目录
    public static void deleteFile(String storePath) {
        File file = new File(storePath);
        if (file.exists()) {
            if (file.isDirectory()) {
                File files[] = file.listFiles();
                for (int i = 0; i < files.length; i++) {
                    files[i].delete();
                }
            }
            file.delete();
        }
    }

}