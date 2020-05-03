package cn.itcast.Test.ys;

import lombok.extern.slf4j.Slf4j;
import org.bytedeco.javacpp.avcodec;
import org.bytedeco.javacpp.avutil;
import org.bytedeco.javacv.FFmpegFrameGrabber;
import org.bytedeco.javacv.FFmpegFrameRecorder;
import org.bytedeco.javacv.Frame;

import java.io.File;

/**
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
     * @param file
     * @param checkCompress
     * @return
     */
    public static String convert(File file, Boolean checkCompress) {

        FFmpegFrameGrabber frameGrabber = new FFmpegFrameGrabber(file.getAbsolutePath());
        String fileName = null;

        Frame captured_frame = null;

        FFmpegFrameRecorder recorder = null;

        try {
            frameGrabber.start();
            fileName = file.getAbsolutePath().replace(".mp4", "_edited.mp4");
            log.info("wight:{},height:{}",frameGrabber.getImageWidth(), frameGrabber.getImageHeight());

            int height = frameGrabber.getImageHeight();
            int widht = frameGrabber.getImageWidth();
            if(checkCompress && needCompress(file.length())){
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
                        System.out.println("!!! end cvQueryFrame");
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

    public static void main(String[] args) {
        File file1 = new File("C:\\Users\\86185\\Desktop\\ys\\c.mp4");
        ConvertVideo.convert(file1,false);
    }
}