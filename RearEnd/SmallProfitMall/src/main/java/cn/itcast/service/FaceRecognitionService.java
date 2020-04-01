package cn.itcast.service;

import java.io.InputStream;

/**
 * 人脸业务层
 * @author Kite
 * @date 2020/3/31
 */
public interface FaceRecognitionService {
    /**
     * 人脸上传
     * @param image 人脸图片
     * @param userId 用户io
     * @param faceVideo 人脸视频
     * @return 上传结果
     * @throws Exception
     */
    public String uploading(String image, String userId, InputStream faceVideo) throws Exception;
}
