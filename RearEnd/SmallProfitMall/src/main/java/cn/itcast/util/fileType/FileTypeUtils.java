package cn.itcast.util.fileType;


import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * @author Kite
 * @date 2020/5/4
 */
public class FileTypeUtils {
    public static String bytesToHexString(byte[] src) {
        StringBuilder stringBuilder = new StringBuilder();
        if (src == null || src.length <= 0) {
            return null;
        }
        for (int i = 0; i < src.length; i++) {
            int v = src[i] & 0xFF;
            String hv = Integer.toHexString(v);
            if (hv.length() < 2) {
                stringBuilder.append(0);
            }
            stringBuilder.append(hv);
        }
        return stringBuilder.toString();
    }

    /**
     * 判断文件类型
     * @param in 文件流
     * @return 是否是图片
     * @throws IOException
     */
    public static String fileType(InputStream in ) throws IOException {
        byte[] b = new byte[3];
        in.read(b, 0, b.length);
        String ooo = bytesToHexString(b);
        ooo = ooo.toUpperCase();
        String fileType = TypeDict.checkType(ooo);
        return fileType;

    }


}
