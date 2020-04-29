package cn.itcast.Test.vTest;

import it.sauronsoftware.jave.*;

import java.io.File;


/**
 * @author Kite
 * @date 2020/4/23
 */
public class FfmepgUtil {

    public static void ffmepg(String sourceAddr, String targetAddr,
                              String codec, int bitRate, String format)  {

        File source = new File(sourceAddr);
        File target = new File(targetAddr);

        try {
            AudioAttributes audio = new AudioAttributes();// 音频属性
            audio.setCodec("libmp3lame");// libfaac PGM编码
            audio.setBitRate(new Integer(128000));// 音频比特率
            audio.setChannels(new Integer(2));// 声道
            audio.setSamplingRate(new Integer(44100));// 采样率
            VideoAttributes video = new VideoAttributes();// 视频属性
            video.setCodec(codec);// 视频编码
            video.setBitRate(new Integer(bitRate));// 视频比特率
            video.setFrameRate(new Integer(30));// 帧率
            EncodingAttributes attrs = new EncodingAttributes();// 转码属性
            attrs.setFormat(format);// 视频格式
            attrs.setAudioAttributes(audio);// 音频属性
            attrs.setVideoAttributes(video);// 视频属性
            Encoder encoder = new Encoder();// 创建解码器
            encoder.encode(source, target, attrs);
            System.out.println("上传成功！！！");
        } catch (EncoderException e) {
            e.printStackTrace();
            System.out.println("文件格式不正确！");
        }
    }


    public static void main(String[] args) throws Exception, Exception {
		/*for(int i = 0; i<=0;i++) {
			ffmepg("D:\\pm.mp4", "D:\\upload\\pm"+i+".mp4", "mpeg4", 15, "mp4");
		}*/

        ffmepg("C:\\Users\\86185\\Desktop\\视频压缩\\a.mp4", "C:\\Users\\86185\\Desktop\\视频压缩\\16.mp4", "mpeg4", 15, "mp4");
       // TranscodingUtil.frameRecord("C:\\Users\\86185\\Desktop\\视频压缩\\a.mp4", "C:\\Users\\86185\\Desktop\\视频压缩\\f.mp4", "mpeg4", 15, "mp4"");
    }
}

