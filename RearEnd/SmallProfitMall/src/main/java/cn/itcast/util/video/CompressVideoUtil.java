package cn.itcast.util.video;

import it.sauronsoftware.jave.*;

import java.io.File;

/**
 * 视频压缩工具类
 */
public class CompressVideoUtil {
    /**
     * 压缩方法
     * @param sources 压缩地址
     * @param targets 输出地址
     */
    public  void main(String sources,String targets) {
        File source = new File(sources);
        File target = new File(targets);
        try{

            AudioAttributes audio = new AudioAttributes();
            audio.setCodec("libmp3lame");
            audio.setBitRate(new Integer(56000));
            audio.setChannels(new Integer(1));
            audio.setSamplingRate(new Integer(22050));
            VideoAttributes video = new VideoAttributes();
            video.setCodec("mpeg4");
            video.setBitRate(new Integer(800000));
            video.setFrameRate(new Integer(15));
            EncodingAttributes attrs = new EncodingAttributes();
            attrs.setFormat("mp4");
            attrs.setAudioAttributes(audio);
            attrs.setVideoAttributes(video);
            Encoder encoder = new Encoder();
            encoder.encode(source, target, attrs);
        }catch (EncoderException e){
            e.printStackTrace();
        }
    }

}

