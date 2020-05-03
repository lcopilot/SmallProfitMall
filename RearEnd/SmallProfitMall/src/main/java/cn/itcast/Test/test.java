package cn.itcast.Test;

import it.sauronsoftware.jave.*;

import java.io.*;
import java.util.UUID;

/**
 * @author Kite
 * @date 2020/4/3
 */
public class test {
    public static void main(String[] args) throws IOException {
        File sources = new File("C:\\Users\\86185\\Desktop\\ys\\a.mp4");
        InputStream inputStream = test.file2InputStream(sources);


        test.writeToLocal("D:\\b.mp4",inputStream);
        File input = new File("D:\\b.mp4");
        //输出地址
        File target = new File("D:\\e.mp4");



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
            encoder.encode(input, target, attrs);
        }catch (EncoderException e){
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
