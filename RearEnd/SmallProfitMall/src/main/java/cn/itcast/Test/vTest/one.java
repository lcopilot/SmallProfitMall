package cn.itcast.Test.vTest;

import sun.net.www.protocol.http.HttpURLConnection;
import ws.schild.jave.*;

import java.io.*;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URL;
import java.nio.channels.FileChannel;

/**
 * @author Kite
 * @date 2020/4/28
 */
public class one {
    public static File compressionVideo(String href){
        try{
             // 缓存到临时目录，压缩上传完到远程服务器上之后，记得删除源视频
            String savePath = "C:\\Users\\86185\\Desktop\\ys\\";
            long time = System.currentTimeMillis();
            URL url=new URL(href);
            HttpURLConnection connection=(HttpURLConnection)url.openConnection();
            connection.setConnectTimeout(600*1000);
            connection.setRequestProperty("User-Agent","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36");
            InputStream in=connection.getInputStream();
            String fileName =  "zip" + href.substring(href.lastIndexOf("/") + 1);
            File saveDir = new File(savePath);
            if(!saveDir.exists()){
                saveDir.mkdirs();
            }
            File file = new File(savePath + fileName);
            OutputStream out=new FileOutputStream(file);
            byte[] bytes=new byte[1024];
            int len = 0;
            while((len=in.read(bytes))!=-1){
                out.write(bytes,0,len);
            }
            out.close();
            in.close();
            System.out.println("下载+压缩 总耗时：" + (System.currentTimeMillis() - time)/1000);
            return compressionVideo(file, fileName);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }



    /**
     * 传视频File对象，返回压缩后File对象信息
     * @param source
     */
    public static File compressionVideo(File source,String picName) {
        if(source == null){
            return null;
        }
        String newPath = source.getAbsolutePath().substring(0, source.getAbsolutePath().lastIndexOf("/")).concat(picName);
        File target = new File(newPath);
        try {
            MultimediaObject object = new MultimediaObject(source);
            AudioInfo audioInfo = object.getInfo().getAudio();
            // 根据视频大小来判断是否需要进行压缩,
            int maxSize = 100;
            double mb = Math.ceil(source.length()/ 1048576);
            int second = (int)object.getInfo().getDuration()/1000;
            BigDecimal bd = new BigDecimal(String.format("%.4f", mb/second));
            System.out.println("开始压缩视频了--> 视频每秒平均 "+ bd +" MB ");
            // 视频 > 100MB, 或者每秒 > 0.5 MB 才做压缩， 不需要的话可以把判断去掉
            boolean temp = mb > maxSize || bd.compareTo(new BigDecimal(0.5)) > 0;
            if(temp){
                long time = System.currentTimeMillis();
                //TODO 视频属性设置
                int maxBitRate = 128000;
                int maxSamplingRate = 44100;
                int bitRate = 800000;
                int maxFrameRate = 20;
                int maxWidth = 1280;

                AudioAttributes audio = new AudioAttributes();
                // 设置通用编码格式
                audio.setCodec("aac");
                // 设置最大值：比特率越高，清晰度/音质越好
                // 设置音频比特率,单位:b (比特率越高，清晰度/音质越好，当然文件也就越大 128000 = 182kb)
                if(audioInfo.getBitRate() > maxBitRate){
                    audio.setBitRate(new Integer(maxBitRate));
                }

                // 设置重新编码的音频流中使用的声道数（1 =单声道，2 = 双声道（立体声））。如果未设置任何声道值，则编码器将选择默认值 0。
                audio.setChannels(audioInfo.getChannels());
                // 采样率越高声音的还原度越好，文件越大
                // 设置音频采样率，单位：赫兹 hz
                // 设置编码时候的音量值，未设置为0,如果256，则音量值不会改变
                // audio.setVolume(256);
                if(audioInfo.getSamplingRate() > maxSamplingRate){
                    audio.setSamplingRate(maxSamplingRate);
                }

                //TODO 视频编码属性配置
                VideoInfo videoInfo = object.getInfo().getVideo();
                VideoAttributes video = new VideoAttributes();
                video.setCodec("h264");
                //设置音频比特率,单位:b (比特率越高，清晰度/音质越好，当然文件也就越大 800000 = 800kb)
                if(videoInfo.getBitRate() > bitRate){
                    video.setBitRate(bitRate);
                }

                // 视频帧率：15 f / s  帧率越低，效果越差
                // 设置视频帧率（帧率越低，视频会出现断层，越高让人感觉越连续），视频帧率（Frame rate）是用于测量显示帧数的量度。所谓的测量单位为每秒显示帧数(Frames per Second，简：FPS）或“赫兹”（Hz）。
                if(videoInfo.getFrameRate() > maxFrameRate){
                    video.setFrameRate(maxFrameRate);
                }

                // 限制视频宽高
                int width = videoInfo.getSize().getWidth();
                int height = videoInfo.getSize().getHeight();
                if(width > maxWidth){
                    float rat = (float) width / maxWidth;
                    video.setSize(new VideoSize(maxWidth,(int)(height/rat)));
                }

                EncodingAttributes attr = new EncodingAttributes();
                attr.setFormat("mp4");
                attr.setAudioAttributes(audio);
                attr.setVideoAttributes(video);

                // 速度最快的压缩方式， 压缩速度 从快到慢： ultrafast, superfast, veryfast, faster, fast, medium,  slow, slower, veryslow and placebo.
//                attr.setPreset(PresetUtil.VERYFAST);
//                attr.setCrf(27);
//                // 设置线程数
//                attr.setEncodingThreads(Runtime.getRuntime().availableProcessors()/2);

                Encoder encoder = new Encoder();
                encoder.encode(new MultimediaObject(source), target, attr);
                System.out.println("压缩总耗时：" + (System.currentTimeMillis() - time)/1000);
                return target;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if(target.length() > 0){
                source.delete();
            }
        }
        return source;
    }


    /**
     * 获取视频大小
     * @param source
     * @return
     */
    @SuppressWarnings({ "resource" })
    public static BigDecimal ReadVideoSize(File source) {
        FileChannel fc = null;
        try {
            FileInputStream fis = new FileInputStream(source);
            fc = fis.getChannel();
            BigDecimal fileSize = new BigDecimal(fc.size());
            return fileSize.divide(new BigDecimal(1048576), 2, RoundingMode.HALF_UP);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (null != fc) {
                try {
                    fc.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }


    //测试
    public static void main(String[] args) throws Exception{
        String savePath = "C:\\Users\\86185\\Desktop\\ys\\s.mp4";
        File saveDir = new File(savePath);
        if(!saveDir.exists()){
            saveDir.mkdirs();
        }
        File file = compressionVideo("C:\\Users\\86185\\Desktop\\ys\\a.mp4");
        System.out.println(file.getName());
    }
}
