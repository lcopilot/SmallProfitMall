package cn.itcast.service.impl;

import cn.itcast.service.FaceRecognitionService;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.humanFace.HumanFaceUtil;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @author Kite
 * @date 2020/3/31
 */
@Service
public class FaceRecognitionServiceImpl implements FaceRecognitionService {
    //判断返回结果
    public static final String AERROR_MSG = "SUCCESS";
    @Autowired
    HumanFaceUtil humanFaceUtil;
    /**
     * 人脸检测
     * @param image 传入的图片
     * @return SUCCESS代表成功  失败返回错误信息
     */
    @Override
    public String uploading(String image,String userId) throws Exception {
        //解密人脸
        image=AesEncryptUtil.desEncrypt(image);

        //人脸检测
        String faceDetectionRes = humanFaceUtil.faceDetection(image);
        Map faceDetectionMap = (Map) JSON.parse(String.valueOf(faceDetectionRes));
        String faceDetectionRedis = (String)faceDetectionMap.get("error_msg");
        System.out.println(faceDetectionRes);
        if (faceDetectionRedis==null||!faceDetectionRedis.equals(AERROR_MSG)){
            return faceDetectionRes;
        }
        //活体检测
        String livingBodyRes = humanFaceUtil.faceDetection(image);
        System.out.println(livingBodyRes);
        Map livingBodyMap = (Map) JSON.parse(String.valueOf(livingBodyRes));
        String livingBodyRedis = (String)livingBodyMap.get("error_msg");
        if (livingBodyRedis==null||!livingBodyRedis.equals(AERROR_MSG)){
            return livingBodyRes;
        }
        //人脸上传
        String uploadingRes =humanFaceUtil.uploading(image,userId);
        System.out.println(uploadingRes);
        Map uploadingMap = (Map) JSON.parse(String.valueOf(uploadingRes));
        String  uploadingRedis = (String)uploadingMap.get("error_msg");
        if (uploadingRedis==null||!uploadingRedis.equals(AERROR_MSG)){
            return uploadingRes;
        }
         return AERROR_MSG;
    }




}
