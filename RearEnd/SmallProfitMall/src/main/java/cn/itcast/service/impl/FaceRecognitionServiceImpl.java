package cn.itcast.service.impl;
import cn.itcast.service.AccountSettingsService;
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
import java.util.Date;
import java.util.Map;

/**
 * @author Kite
 * @date 2020/3/31
 */
@Service
public class FaceRecognitionServiceImpl implements FaceRecognitionService {

    @Autowired
    AccountSettingsService accountSettingsService;
    //判断返回结果
    public static final String AERROR_MSG = "SUCCESS";

    //人脸检测信用度
    public static final Double CREDIT = 0.82;

    //信用不足错误代码
    public static final int ERROR_CODE = 30000;

    @Autowired
    HumanFaceUtil humanFaceUtil;

    /**
     * 人脸上传
     * @param image 人脸图片
     * @param userId 用户id
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
        if(!AERROR_MSG.equals(faceVerification)){
            return faceVerification;
        }
        //人脸上传
        JSONObject uploadingRes =humanFaceUtil.uploading(image,userId);
        String  uploadingRedis = uploadingRes.getString("error_msg");
        if (!AERROR_MSG.equals(uploadingRedis)){
            JSONObject  uploadingError = new JSONObject();
            uploadingError.put("error_code", uploadingRes.getString("error_code"));
            return  uploadingError.toString(2);
        }
        JSONObject result=uploadingRes.getJSONObject("result");
         String faceToken =  result.getString("face_token");
        accountSettingsService.updateFaceRecognition(userId,faceToken,1);
         return AERROR_MSG;
    }

    /**
     *删除人脸
     * @param userId 用户io
     * @return
     */
    @Override
    public String deleteFace(String userId) throws Exception {

        //删除返回结果集合
        JSONObject deleteFace =humanFaceUtil.delete(userId);
        //删除返回结果
        String deleteRedis =deleteFace.getString("error_msg");
        if (!AERROR_MSG.equals(deleteRedis)){
            JSONObject  uploadingError = new JSONObject();
            uploadingError.put("error_code", deleteFace.getInt("error_code"));
            return  uploadingError.toString(2);
        }
        accountSettingsService.updateFaceRecognition(userId,null,0);
        return AERROR_MSG;
    }

    /**
     * 人脸比对
     * @param token 用户token
     * @param image 用户人脸照片
     * @return
     */
    @Override
    public String faceCheck(String token, String image){
        //人脸比对
        JSONObject faceCheck=humanFaceUtil.faceCheck(token,image);
        //人脸比对返回结果
        String deleteRedis =faceCheck.getString("error_msg");
        if (!AERROR_MSG.equals(deleteRedis)){
            JSONObject  faceCheckError = new JSONObject();
            faceCheckError.put("error_code", faceCheckError.getInt("error_code"));
            return  faceCheckError.toString(2);
        }
        Double score =faceCheck.getDouble("score");
        if (score<CREDIT){
            JSONObject faceCheckError = new JSONObject();
            faceCheckError.put("error_code",ERROR_CODE);
            return faceCheckError.toString(2);
        }
        return AERROR_MSG;
    }




    /**
     * 人脸检测 活体检测
     * @param image 人脸的图片
     * @param faceVideo 人脸视频
     * @return 成功返回 AERROR_MSG 失败 返回错误代码
     */
    @Override
    public String faceVerification(String image , InputStream faceVideo) throws IOException {
        //人脸检测
        JSONObject faceDetectionRes = humanFaceUtil.faceDetection(image);
        //人脸检测结果
        String faceDetectionRedis =faceDetectionRes.getString("error_msg");
        if (!faceDetectionRedis.equals(AERROR_MSG)){
            JSONObject faceError = new JSONObject();
            faceError.put("error_code", faceDetectionRes.getString("error_code"));
            return faceError.toString(2);
        }
        //取检测返回可信度
        JSONObject results=faceDetectionRes.getJSONObject("result");
        JSONArray face_list=results.getJSONArray("face_list");
        JSONObject livemapscore=face_list.getJSONObject(0).getJSONObject("liveness");
        double creditValue =livemapscore.getDouble("livemapscore");
        //小于88返回错误代码
        if (creditValue<CREDIT){
            JSONObject faceError = new JSONObject();
            faceError.put("error_code",ERROR_CODE);
            return faceError.toString(2);
        }

        //是否有视频流
        if (faceVideo==null){
            //没有视频流 进行图片活体认证
            //图片人脸活体检测
            JSONObject livingBodyRes = humanFaceUtil.livingBody(image);
            //图片活体检测结果 AERROR_MSG 代表成功 否则 失败
            String livingBodyRedis = livingBodyRes.getString("error_msg");
            if (!livingBodyRedis.equals(AERROR_MSG)){
                JSONObject livingError = new JSONObject();
                livingError.put("error_code", livingBodyRes.getString("error_code"));
                return  livingError.toString(2);
            }else {
                JSONObject result = livingBodyRes.getJSONObject("result");
                //活体分值 小于0.88 返回不成功 face_liveness 图片活体可信度属性
                String faceLiveness="face_liveness";
                if (result.getDouble(faceLiveness)<CREDIT){
                    JSONObject livingError = new JSONObject();
                    livingError.put("error_code",ERROR_CODE);
                    return livingError.toString();
                }
            }
        }else {
            //有视频流,进行视频流活体认证
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
