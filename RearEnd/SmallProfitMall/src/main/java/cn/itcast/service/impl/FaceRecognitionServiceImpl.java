package cn.itcast.service.impl;
import cn.itcast.service.FaceRecognitionService;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.humanFace.HumanFaceUtil;
import com.alibaba.fastjson.JSON;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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

    //人脸检测信用度
    public static final Double CREDIT = 0.88;

    //信用不足错误代码
    public static final int ERROR_CODE = 30000;

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
            JSONObject  uploadingError = new JSONObject();
            uploadingError.put("error_code", uploadingMap.get("error_code"));
            return  uploadingError.toString(2);
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
        JSONObject faceDetectionRes = humanFaceUtil.faceDetection(image);
        Map faceDetectionMap = (Map) JSON.parse(String.valueOf(faceDetectionRes));
        //人脸检测结果
        String faceDetectionRedis = (String)faceDetectionMap.get("error_msg");
        System.out.println("---------------人脸检测结果-----------");
        System.out.println(faceDetectionRes);
        System.out.println("---------------人脸检测结果-----------");
        if (!faceDetectionRedis.equals(AERROR_MSG)){
            JSONObject faceError = new JSONObject();
            faceError.put("error_code", faceDetectionMap.get("error_code"));
            return faceError.toString(2);
        }
        JSONObject results=faceDetectionRes.getJSONObject("result");
        JSONArray face_list=results.getJSONArray("face_list");
        JSONObject livemapscore=face_list.getJSONObject(0).getJSONObject("liveness");
        double creditValue =livemapscore.getDouble("livemapscore");
        if (creditValue<CREDIT){
            JSONObject faceError = new JSONObject();
            faceError.put("error_code",ERROR_CODE);
            return faceError.toString(2);
        }

        if (faceVideo==null){
            //图片人脸活体检测
            String livingBodyRes = humanFaceUtil.livingBody(image);
            System.out.println("---------------图片活体检测结果-----------");
            System.out.println(livingBodyRes);
            System.out.println("---------------图片活体检测结果-----------");
            Map livingBodyMap = (Map) JSON.parse(String.valueOf(livingBodyRes));
            //图片活体检测结果 AERROR_MSG 代表成功 否则 失败
            String livingBodyRedis = (String)livingBodyMap.get("error_msg");
            if (!livingBodyRedis.equals(AERROR_MSG)){
                JSONObject livingError = new JSONObject();
                livingError.put("error_code", livingBodyMap.get("error_code"));
                return  livingError.toString(2);
            }else {
                Map result = (Map) livingBodyMap.get("result");
                //活体分值 小于0.88 返回不成功 face_liveness 图片活体可信度属性
                String face_liveness="face_liveness";
                if (Double.parseDouble(result.get(face_liveness).toString())<CREDIT){
                    JSONObject livingError = new JSONObject();
                    livingError.put("error_code",ERROR_CODE);
                    return livingError.toString();
                }
            }
        }else {
            //语言验证id
            String sessionId = humanFaceUtil.voiceDetection();
            //视频活体检测
            String videoValidation = humanFaceUtil.videoValidation(sessionId, faceVideo);
            Map videoValidationMap = (Map) JSON.parse(String.valueOf(videoValidation));
            //取是否成功属性
            String videoValidationMapRedis= (String) videoValidationMap.get("error_msg");
             //判断是否成功
            if (!videoValidationMapRedis.equals(AERROR_MSG)) {
                JSONObject videoError = new JSONObject();
                videoError.put("error_code", videoValidationMap.get("error_code"));
                return  videoError.toString(2);
            }else {
                //视频活体检测可信度值属性
                String score="score";
                Map result = (Map) videoValidationMap.get("result");
                System.out.println("---------------视频活体检测结果-----------");
                System.out.println("视频活体检测信用分"+Double.parseDouble(result.get(score).toString()));
                System.out.println("---------------视频活体检测结果-----------");
                //活体分值 小于0.88 返回不成功
                if (Double.parseDouble(result.get(score).toString())<CREDIT){
                    JSONObject videoError = new JSONObject();
                    videoError.put("error_code",ERROR_CODE);
                    return videoError.toString();
                }
            }
        }
        return AERROR_MSG;
    }


}
