package cn.itcast.util.video;

import cn.itcast.util.compressPicture.PathUtil;
import lombok.extern.slf4j.Slf4j;
import org.bytedeco.javacpp.avcodec;
import org.bytedeco.javacpp.avutil;
import org.bytedeco.javacv.FFmpegFrameGrabber;
import org.bytedeco.javacv.FFmpegFrameRecorder;
import org.bytedeco.javacv.Frame;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

/**
 * 现用压缩视频工具
 * @author
 * @date 2020/2/17
 * <p>
 * Description:
 */
@Slf4j
public class ConvertVideo {

    private static final int FRAME_RATE = 30;
    private static final int VIDEO_BITRATE = 1048576;
    private static final int COMPRESS_WIDTH = 320;


    /**
     * 在使用时发现视频压缩和视频时长有关系
     * 一个9M的56s的视频压缩后视频7M多
     * 一个22M的5s的视频压缩后视频624K
     * @param in 文件流
     * @return
     * @throws IOException
     */
    public static String convert(String outputSite,InputStream in) throws IOException {
        //in流转换为文件的文件名
        String outName = UUID.randomUUID().toString().replaceAll("-","");
        //流转文件输出地址地址
        String inputs =outputSite+outName+".mp4" ;

        //in转文件
        ConvertVideo.writeToLocal(inputs,in);

        File input = new File(inputs);

        FFmpegFrameGrabber frameGrabber = new FFmpegFrameGrabber(input.getAbsolutePath());
        String fileName = null;

        Frame captured_frame = null;

        FFmpegFrameRecorder recorder = null;

        try {
            frameGrabber.start();
            fileName = input.getAbsolutePath().replace(".mp4", "_succeed.mp4");
            log.info("wight:{},height:{}",frameGrabber.getImageWidth(), frameGrabber.getImageHeight());

            int height = frameGrabber.getImageHeight();
            int widht = frameGrabber.getImageWidth();
            if(false && needCompress(input.length())){
                height = calculateHeight(frameGrabber.getImageWidth(), frameGrabber.getImageHeight(), COMPRESS_WIDTH);
                widht = COMPRESS_WIDTH;
                log.info("new wight:{},height:{}",widht, height);
            }
            recorder = new FFmpegFrameRecorder(fileName, widht, height, frameGrabber.getAudioChannels());
            recorder.setFrameRate(FRAME_RATE);
            //下面这行打开就报错
            //recorder.setSampleFormat(frameGrabber.getSampleFormat());
            recorder.setSampleRate(frameGrabber.getSampleRate());
            //recorder.setAudioChannels(1);
            recorder.setVideoOption("preset", "veryfast");
            // yuv420p,像素
            recorder.setPixelFormat(avutil.AV_PIX_FMT_YUV420P);
            recorder.setVideoCodec(avcodec.AV_CODEC_ID_H264);
            recorder.setAudioCodec(avcodec.AV_CODEC_ID_AAC);
            recorder.setFormat("mp4");
            //比特
            //recorder.setVideoBitrate(VIDEO_BITRATE);
            recorder.start();

            while (true) {
                try {
                    captured_frame = frameGrabber.grabFrame();
                    if (captured_frame == null) {
                        break;
                    }
                    recorder.setTimestamp(frameGrabber.getTimestamp());
                    recorder.record(captured_frame);
                } catch (Exception e) {
                }
            }
            recorder.stop();
            recorder.release();
            frameGrabber.stop();
        } catch (Exception e) {
            e.printStackTrace();
        }
        //file.delete();
       // 删除文件临时转换视频
        PathUtil.deleteFile(inputs);
        return fileName;
    }

    /**
     * 是否需要压缩，大于3MB
     * @param length
     * @return
     */
    public static boolean needCompress(long length){
        log.info("video size:{}", length);
        return length >= 3145728;
    }

    /**
     * 等比计算新高度
     * @param w
     * @param h
     * @param nw
     * @return
     */
    private static int calculateHeight(int w, int h, int nw){
        double s = Integer.valueOf(h).doubleValue() / Integer.valueOf(w).doubleValue();
        int height = (int) (nw * s);
        //如果宽和高不是偶数recorder.start();会报错
        if(height % 2 !=0){
            height += 1;
        }
        return height;
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