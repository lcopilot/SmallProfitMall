package cn.itcast.service;

import java.io.IOException;
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

    /**
     * 删除人脸
     * @param userId 用户io
     * @return 删除结果
     */
    public String deleteFace(String userId) throws Exception;

    /**
     * 活体检测
     * @param image 用户人脸照片
     * @param faceVideo 用户视频
     * @return
     * @throws IOException
     */
    public String faceVerification(String image , InputStream faceVideo) throws IOException;

    /**
     * 人脸比对
     * @param token
     * @param image
     * @return
     */
    public String faceCheck(String token,String image);
}
