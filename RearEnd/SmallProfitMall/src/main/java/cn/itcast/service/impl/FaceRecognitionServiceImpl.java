package cn.itcast.service.impl;

import cn.itcast.service.FaceRecognitionService;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.humanFace.HumanFaceUtil;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        System.out.println("---------------人脸检测结果-----------");
        System.out.println(faceDetectionRes);
        System.out.println("---------------人脸检测结果-----------");
        if (!faceDetectionRedis.equals(AERROR_MSG)){
            return faceDetectionRes;
        }
        //活体检测
        String livingBodyRes = humanFaceUtil.faceDetection(image);
        System.out.println("---------------活体检测结果-----------");
        System.out.println(livingBodyRes);
        System.out.println("---------------活体检测结果-----------");
        Map livingBodyMap = (Map) JSON.parse(String.valueOf(livingBodyRes));
        String livingBodyRedis = (String)livingBodyMap.get("error_msg");
        if (!livingBodyRedis.equals(AERROR_MSG)){
            return livingBodyRes;
        }
        //人脸上传
        String uploadingRes =humanFaceUtil.uploading(image,userId);
        System.out.println("---------------人脸上传结果-----------");
        System.out.println(uploadingRes);
        System.out.println("---------------人脸上传结果-----------");
        Map uploadingMap = (Map) JSON.parse(String.valueOf(uploadingRes));
        String  uploadingRedis = (String)uploadingMap.get("error_msg");
        if (!uploadingRedis.equals(AERROR_MSG)){
            return uploadingRes;
        }
         return AERROR_MSG;
    }




}
