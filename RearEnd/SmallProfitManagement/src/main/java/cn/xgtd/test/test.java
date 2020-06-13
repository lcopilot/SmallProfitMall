package cn.xgtd.test;

import cn.xgtd.util.file.FilesUpload;
import org.junit.Test;

import java.io.*;
import java.nio.ByteBuffer;

/**
 * @author Kite
 * @date 2020/6/13
 */
public class test {

        private static int breakTrans(String sourceFilePath, String targetFilePath) {
            int position = -1;
            File sourFile = new File(sourceFilePath);
            Integer c = Math.toIntExact(sourFile.length());
            File targetFile = new File(targetFilePath);
            FileInputStream fis = null;
            FileOutputStream fos = null;
            byte[] buffer = new byte[1024*10];
            try {
                fis = new FileInputStream(sourFile);
                fos = new FileOutputStream(targetFile);
                int numberRead = 0;
                while ((numberRead = fis.read(buffer)) != -1) {
                    fos.write(buffer, 0, numberRead);
                    fos.flush();
                    if (targetFile.length() == 10240) {// 当目标文件长度写到三的时候，抛出异常，终端传输
                        throw new Exception();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                int fSize = Integer.parseInt(String.valueOf(targetFile.length()));
                return fSize;
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
            return position;
        }


    private static void continueTrans(String sourceFilePath, String targetFilePath) {
        File sourFile = new File(sourceFilePath);
        File targetFile = new File(targetFilePath);
        RandomAccessFile read = null;
        RandomAccessFile write = null;
        int sourFileSize = Math.toIntExact(sourFile.length());
        int targetFileSize = Math.toIntExact(targetFile.length());
        if (sourFileSize != targetFileSize){
        byte[] buf = new byte[1024*10];
        try {
            read = new RandomAccessFile(sourFile, "r");
            write = new RandomAccessFile(targetFile, "rw");
                // 关键，找到位置
                read.seek(targetFileSize);
                write.seek(targetFileSize);
            int e = 1;
            while (read.read(buf) != -1) {
                System.out.println("write dataing ...".toUpperCase());
                System.out.println(e++);
                write.write(buf);
            }
        } catch (Exception e) {
            e.printStackTrace();
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
        }
    }

    /**
     * 文件上传
     * @param sourFiles 文件输入流
     * @param targetFilePath 输出文件地址
     * @return 当前文件上传进度
     */
    private static int breakTrans(FileInputStream sourFiles, String targetFilePath) {
        //断点 -1为完全上传
        int position = -1;
        File targetFile = new File(targetFilePath);
        FileInputStream fis = null;
        FileOutputStream fos = null;
        byte[] buf = new byte[1];
        try {
            fis = sourFiles;
            fos = new FileOutputStream(targetFile);
//            while (fis.read(buf) != -1) {
//                System.out.println("write dataing ...".toUpperCase());
//                fos.write(buf);
//
//            }

            byte[] buffer = new byte[1024];
            int numberRead = 0;
            while ((numberRead = fis.read(buffer)) != -1) {
                fos.write(buffer, 0, numberRead);
                fos.flush();
            }
            } catch (Exception e) {
            e.printStackTrace();
            int fSize = Integer.parseInt(String.valueOf(targetFile.length()));
            return fSize;
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
        return position;
    }
    public static void continueTrans(String sourceFilePath, String targetFilePath, int position) {
        File sourFile = new File(sourceFilePath);
        File targetFile = new File(targetFilePath);
        Integer c = Math.toIntExact(targetFile.length());
        System.out.println(c);
        RandomAccessFile read = null;
        RandomAccessFile write = null;
        byte[] buf = new byte[1024*10];
        try {
            read = new RandomAccessFile(sourFile, "r");
            write = new RandomAccessFile(targetFile, "rw");
            // 关键，找到位置
            read.seek(0);
            int numberRead = 0;
            write.seek(position);
            ByteBuffer byteBuffer = ByteBuffer.wrap(buf);
            while ((numberRead = read.read(buf)) != -1) {
                System.out.println("write dataing ...".toUpperCase());
                write.write(buf,0, numberRead);
            }
        } catch (Exception e) {
            e.printStackTrace();
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
    }



    public static void main(String[] args) throws FileNotFoundException {
            String sourceFilePath ="C:\\Users\\86185\\Desktop\\ys\\3a3b70188a3a470cbd33d88ae1b7c5d8.jpeg";
            String  targetFilePath  = "C:\\Users\\86185\\Desktop\\ys\\s.jpeg";
            File file = new File(sourceFilePath);

            String a1 ="C:\\Users\\86185\\Desktop\\ys\\sp\\099bd2b111810af9b6d41a6b6565f10d-0";
            String a2 ="C:\\Users\\86185\\Desktop\\ys\\sp\\099bd2b111810af9b6d41a6b6565f10d-2";
            String a3 ="C:\\Users\\86185\\Desktop\\ys\\sp\\099bd2b111810af9b6d41a6b6565f10d-3";
            String a4 ="C:\\Users\\86185\\Desktop\\ys\\sp\\099bd2b111810af9b6d41a6b6565f10d-4";
            String a5 ="C:\\Users\\86185\\Desktop\\ys\\sp\\099bd2b111810af9b6d41a6b6565f10d-5";

            String b1 ="C:\\Users\\86185\\Desktop\\ys\\xsp\\1";
            String b2 ="C:\\Users\\86185\\Desktop\\ys\\xsp\\2";
            String b3 ="C:\\Users\\86185\\Desktop\\ys\\xsp\\3";
            String b4 ="C:\\Users\\86185\\Desktop\\ys\\xsp\\4";
            String b5 ="C:\\Users\\86185\\Desktop\\ys\\xsp\\5";


            String f3 ="C:\\Users\\86185\\Desktop\\ys\\2";
            String f4 ="C:\\Users\\86185\\Desktop\\ys\\1.jpg";
        InputStream inputStream;
        inputStream = new FileInputStream(f3);
        FileInputStream fileInputStream = (FileInputStream) inputStream;
//        breakTrans(fileInputStream,b1);
//       Integer a =  breakTrans(sourceFilePath,targetFilePath);
//        continueTrans(sourceFilePath,targetFilePath);
        String f1 = "D:\\javaweb\\新建文件夹\\3a3b70188a3a470cbd33d88ae1b7c5d8-0(1)";
//        String f2 = "D:\\javaweb\\1";
//        continueTrans(f1,f2,10240);

//        breakTrans(sourceFilePath,targetFilePath);
        FilesUpload.continueTrans(fileInputStream,f4,1024);

    }

}
