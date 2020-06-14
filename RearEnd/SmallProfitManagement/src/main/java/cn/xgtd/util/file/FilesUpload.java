package cn.xgtd.util.file;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/**
 * 文件上传 断点续传
 * @author Kite
 * @date 2020/6/13
 */
public class FilesUpload {
    /**
     * 文件上传
     * @param sourFiles 文件输入流
     * @param targetFilePath 输出文件地址
     * @return 文件上传异常 返回断点 成功 返回文件大小
     */
    public static Map breakTrans(FileInputStream sourFiles, String targetFilePath) {
        Map map = new HashMap();
        Boolean succeed = false;
        //断点 -1为完全上传
        int position = -1;
        File targetFile = new File(targetFilePath);
        FileInputStream fis = null;
        FileOutputStream fos = null;
        byte[] buf = new byte[1024*10];
        try {
            fis = sourFiles;
            fos = new FileOutputStream(targetFile);
            int numberRead = 0;
            while ((numberRead = fis.read(buf)) != -1) {
                fos.write(buf, 0, numberRead);
                fos.flush();
                // 当目标文件长度写到三的时候，抛出异常，终端传输
//                if (targetFile.length() > 10240) {
//                    throw new Exception();
//                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            position = Integer.parseInt(String.valueOf(targetFile.length()));
        } finally {
            try {
                if (fis != null) {
                    fis.close();
                }
                if (fos != null) {
                    fos.close();
                }
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        //文件上传成功
        if (position == -1){
            Integer fileSize = Integer.parseInt(String.valueOf(targetFile.length()));
            succeed = true;
            map.put("succeed",succeed);
            map.put("fileSize",fileSize);
            return map;
        }
        //失败
        map.put("succeed",succeed);
        map.put("position",position);
        return map;
    }


    /**
     * 断点续传
     * @param sourceFilePath 续传文件地址
     * @param targetFilePath 被续传文件地址
     * @param position 断点
     * @throws IOException
     */
    public static Integer continueTrans(FileInputStream sourceFilePath, String targetFilePath, int position) {
        //断点 -1为完全上传
        int positions = -1;
        File targetFile = new File(targetFilePath);
        FileInputStream read = sourceFilePath;
        RandomAccessFile write = null;
        byte[] buf = new byte[1024*10];
        try {
            write = new RandomAccessFile(targetFile, "rw");
            // 关键，找到位置
            int numberRead = 0;
            write.seek(position);
            while ((numberRead = read.read(buf)) != -1) {
                System.out.println("write dataing ...".toUpperCase());
                write.write(buf,0, numberRead);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return positions = (int) targetFile.length();
        } finally {
            try {
                if (read != null) {
                    read.close();
                }
                if (write != null) {
                    write.close();
                }
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return positions;
    }



}
