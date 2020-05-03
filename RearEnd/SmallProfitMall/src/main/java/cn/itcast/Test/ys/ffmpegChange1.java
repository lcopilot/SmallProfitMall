package cn.itcast.Test.ys;


import it.sauronsoftware.jave.*;

import java.io.File;

/**
 * @author Kite
 * @date 2020/5/3
 */
public class ffmpegChange1 {
    //java代码
    private static void ffmpegChange1(File file, File fileSave) {
        try {
            AudioAttributes audio = new AudioAttributes();
            audio.setCodec("libmp3lame");
            audio.setBitRate(new Integer(56000));
            audio.setChannels(new Integer(1));
            audio.setSamplingRate(new Integer(22050));

            VideoAttributes video = new VideoAttributes();
            // video.setCodec(myConfig.getFileFFmpegPath());
//            video.setCodec("libx264");
            video.setCodec("h264");
            // video.setCodec("h264");
            video.setBitRate(new Integer(800000));
            video.setFrameRate(new Integer(15));

            EncodingAttributes attrs = new EncodingAttributes();
            attrs.setFormat("mp4");
            attrs.setAudioAttributes(audio);
            attrs.setVideoAttributes(video);

            Encoder encoder = new Encoder();

            long beginTime = System.currentTimeMillis();
            MultimediaInfo m = encoder.getInfo(file);
            System.out.println(m.getDuration() / 1000 + "秒");
            System.out.println("获取时长花费时间是：" + ((System.currentTimeMillis() - beginTime)) / 1000 + "秒");
            beginTime = System.currentTimeMillis();
//            encoder.encode(source, fileSave, attrs);

            encoder.encode(file, fileSave, attrs);
//            System.out.println("压缩完成...");
            System.out.println("压缩完成花费时间是：" + ((System.currentTimeMillis() - beginTime)) / 1000 + "秒");

        } catch (EncoderException e) {
            e.printStackTrace();
            System.out.println("压缩错误信息是1：" + e.getMessage());
        }
    }

    public static void main(String[] args) {
        File file1 = new File("C:\\Users\\86185\\Desktop\\ys\\c.mp4");
        File file2 = new File("C:\\Users\\86185\\Desktop\\ys\\f.mp4");
        ffmpegChange1.ffmpegChange1(file1,file2);
    }

}
