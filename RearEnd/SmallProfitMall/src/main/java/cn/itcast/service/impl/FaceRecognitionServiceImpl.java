package cn.itcast.service.impl;

import cn.itcast.service.FaceRecognitionService;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.humanFace.HumanFaceUtil;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/**
 * @author Kite
 * @date 2020/3/31
 */
@Service
@Transactional
public class FaceRecognitionServiceImpl implements FaceRecognitionService {
    //判断返回结果
    public static final String AERROR_MSG = "SUCCESS";
    @Autowired
    HumanFaceUtil humanFaceUtil;

    /**
     * 人脸上传
     * @param image 人脸图片
     * @param userId 用户io
     * @param faceVideo 人脸视频
     * @return
     * @throws Exception
     */
    @Override
    public String uploading(String image,String userId,InputStream faceVideo) throws Exception {
        //解密人脸
        image=AesEncryptUtil.desEncrypt(image);
        //人脸验证结果 验证失败 返回错误代码
        String faceVerification = faceVerification(image,faceVideo);
        if(!faceVerification.equals(AERROR_MSG)){
            return faceVerification;
        }
        //人脸上传
        String uploadingRes =humanFaceUtil.uploading(image,userId);
        System.out.println("---------------人脸上传结果-----------");
        System.out.println(uploadingRes);
        System.out.println("------------------------------------");
        Map uploadingMap = (Map) JSON.parse(String.valueOf(uploadingRes));
        String  uploadingRedis = (String)uploadingMap.get("error_msg");
        if (!uploadingRedis.equals(AERROR_MSG)){
            return uploadingRes;
        }
         return AERROR_MSG;
    }

    /**
     * 人脸检测 活体检测
     * @param image 人脸的图片
     * @param faceVideo 人脸视频
     * @return 成功返回 AERROR_MSG 失败 返回错误代码
     */
    public String faceVerification(String image , InputStream faceVideo) throws IOException {
        //人脸检测
        String faceDetectionRes = humanFaceUtil.faceDetection(image);
        Map faceDetectionMap = (Map) JSON.parse(String.valueOf(faceDetectionRes));
        String faceDetectionRedis = (String)faceDetectionMap.get("error_msg");
        System.out.println("---------------人脸检测结果-----------");
        System.out.println(faceDetectionRes);
        System.out.println("---------------人脸检测结果-----------");
        if (!faceDetectionRedis.equals(AERROR_MSG)){
            return faceDetectionRes;
        }
        if (faceVideo==null){
            //图片人脸活体检测
            String livingBodyRes = humanFaceUtil.faceDetection(image);
            System.out.println("---------------活体检测结果-----------");
            System.out.println(livingBodyRes);
            System.out.println("-------------------------------------");
            Map livingBodyMap = (Map) JSON.parse(String.valueOf(livingBodyRes));
            String livingBodyRedis = (String)livingBodyMap.get("error_msg");
            if (!livingBodyRedis.equals(AERROR_MSG)){
                return livingBodyRes;
            }
        }else {
            //语言验证id
            String sessionId = humanFaceUtil.voiceDetection();
            //视频活体检测
            String videoValidation = humanFaceUtil.videoValidation(sessionId, faceVideo);
            System.out.println("---------------视频活体检测结果-----------");
            System.out.println(videoValidation);
            System.out.println("-------------------------------------");
            Map videoValidationMap = (Map) JSON.parse(String.valueOf(videoValidation));
            String videoValidationMapRedis = (String) videoValidationMap.get("error_msg");
            if (!videoValidationMapRedis.equals(AERROR_MSG)) {
                return videoValidation;
            }
        }
        return AERROR_MSG;
    }


}
