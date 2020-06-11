package cn.xgtd.util.file;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

/**
 * 文件合并
 */
public class FileAppendUtils {

    private static final Logger logger = LoggerFactory.getLogger(FileAppendUtils.class);
    /**
     * 1.文件大于500M时 建议使用多线程
     * 2.支持对同一个文件的合并
     * 3.支持对空文件的合并
     *
     * @param srcFile         源文件
     * @param destFile        目标文件
     * @param ignoreSrcHeader 是否忽略源文件的第一行
     * @throws IOException
     */
    private static void appendToDest(File srcFile, File destFile, boolean ignoreSrcHeader) throws IOException {
        long start = System.currentTimeMillis();

        int len;
        // 对单个文件合并时进行计数
        long grandTotalLength = 0L;
        byte[] bytes = new byte[1024 * 100];
        RandomAccessFile srcRandomF = null;
        try (FileOutputStream fileOutputStream = new FileOutputStream(destFile, true)) {
            srcRandomF = new RandomAccessFile(srcFile, "r");
            // 忽略源文件的第一行
            long srcFileLength = srcRandomF.length();
            if (ignoreSrcHeader && srcFileLength != 0) {
                // 移动指针
                srcRandomF.readLine();
                // 当前指针为第二行开始处(换行符占一个字节)
                long filePointer = srcRandomF.getFilePointer();
                grandTotalLength += filePointer;
                srcRandomF.seek(filePointer);
            }
            if (destFile.length() != 0 && !theEOFisLF(destFile)) {
                // 结尾不是换行符,手动添加
                byte[] separatorBytes = System.getProperty("line.separator").getBytes();
                fileOutputStream.write(separatorBytes, 0, separatorBytes.length);
                logger.info("文件" + destFile.getAbsolutePath() + "手动添加换行符成功");
            }

            while (grandTotalLength < srcFileLength && (len = srcRandomF.read(bytes)) != -1) {
                grandTotalLength += len;
                fileOutputStream.write(bytes, 0, len);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (srcRandomF != null)
                    srcRandomF.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        logger.info("文件合并耗时" + (System.currentTimeMillis() - start) + "ms");
    }

    /**
     *  文件结尾处是否是换行符
     * @param file
     * @return
     * @throws IOException
     */
    public static boolean theEOFisLF(File file) throws IOException {
        RandomAccessFile rf = null;
        try {
            rf = new RandomAccessFile(file, "r");
            long fileLength = rf.length();
            long start = rf.getFilePointer();// 返回此文件中的当前偏移量
            long pos = start + fileLength - 1;
            if (pos > 0) {
                rf.seek(pos);// 设置偏移量为文件末尾
            }
            int c = rf.read();
            return c == '\n' || c == '\r';
        } catch (IOException e) {
            e.printStackTrace();
            throw e;
        } finally {
            try {
                if (rf != null)
                    rf.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

