package cn.itcast.util.video;

import cn.itcast.Test.test;
import it.sauronsoftware.jave.*;

import java.io.*;

/**
 * 暂时不用（可压缩 压缩后视频不能播放）
 * 视频压缩工具类
 */
public class CompressVideoUtil {
    /**
     * 视频压缩
     * @param inputVideo 转换视频流转为file文件临时
     * @param in 压缩视频流
     * @param targets 输出地址
     */
    public static void compress(String inputVideo ,InputStream in, String targets) throws IOException {
        test.writeToLocal(inputVideo,in);
        File input = new File(inputVideo);
        //输出地址
        File target = new File(targets);

        try {
            // 音频编码设置
            AudioAttributes audio = new AudioAttributes();
            audio.setCodec("libmp3lame");
            audio.setBitRate(new Integer(64000));
            audio.setChannels(new Integer(1));
            audio.setSamplingRate(new Integer(22050));

            // 视频编码设置
            VideoAttributes video = new VideoAttributes();
            video.setCodec("mpeg4");
            video.setBitRate(new Integer(160000));
            video.setFrameRate(new Integer(15));
            //            video.setSize(new VideoSize(100, 150));

            // 视频转码编码设置
            EncodingAttributes attrs = new EncodingAttributes();
            attrs.setFormat("mp4");
            attrs.setAudioAttributes(audio);
            attrs.setVideoAttributes(video);

            // 编码器
            Encoder encoder = new Encoder();
            encoder.encode(input, target, attrs);
        } catch (EncoderException e) {
            e.printStackTrace();
        }
    }

    /**
     * 将file转换为inputStream
     * @param file
     * @return
     * @throws FileNotFoundException
     */
    public static InputStream file2InputStream(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /**
     * 将inputStream转换为file
     * @param destination 输出地址
     * @return input  输入的流
     * @throws
     */
    public static void writeToLocal(String destination, InputStream input)

            throws IOException {

        int index;

        byte[] bytes = new byte[1024];

        FileOutputStream downloadFile = new FileOutputStream(destination);

        while ((index = input.read(bytes)) != -1) {

            downloadFile.write(bytes, 0, index);

            downloadFile.flush();

        }

        input.close();

        downloadFile.close();



    }

}

