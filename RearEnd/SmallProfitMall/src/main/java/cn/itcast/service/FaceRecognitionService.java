package cn.itcast.service;

/**
 * 人脸业务层
 * @author Kite
 * @date 2020/3/31
 */
public interface FaceRecognitionService {
    /**
     * 人脸上传
     * @param image 传入的图片
     * @return 判断结果
     */
    public String uploading(String image,String userId) throws Exception;
}
