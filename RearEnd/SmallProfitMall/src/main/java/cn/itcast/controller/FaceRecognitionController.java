package cn.itcast.controller;

import cn.itcast.response.CommonCode;
import cn.itcast.response.faceRecognition.FaceRecognition;
import cn.itcast.response.faceRecognition.FaceRecognitionResponse;
import cn.itcast.service.FaceRecognitionService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;

/**
 * 人脸识别
 * @author Kite
 * @date 2020/3/31
 */
@Controller
@RequestMapping("/FaceRecognitionController")
@ResponseBody
public class FaceRecognitionController {

    //判断返回结果
    public static final String RESULT = "SUCCESS";

    @Autowired
    FaceRecognitionService faceRecognitionService;

    /**
     * 人脸上传
     * @param image 用户人图片
     * @param userId 用户id
     * @param videoFile 视频流
     * @return 验证错误 返回错误代码
     * @throws Exception
     */
    @RequestMapping(value = "/uploading",method = RequestMethod.POST)
    public FaceRecognitionResponse uploading(String image, String userId , MultipartFile videoFile) throws Exception {
        //视频是否存在
        InputStream videoFiles = null;
        if(videoFile!=null){
            videoFiles=videoFile.getInputStream();
        }
        String result =faceRecognitionService.uploading(image,userId,videoFiles);
        if (RESULT.equals(result)){
            return new FaceRecognitionResponse(CommonCode.SUCCESS, null);
        }
        FaceRecognition faceRecognition=new FaceRecognition();
        //设置错误代码
        faceRecognition.setResult((JSONObject) JSON.parse(result));
        return new FaceRecognitionResponse(CommonCode.FAIL, faceRecognition);
    }

    /**
     * 删除人脸
     * @param userId 用户id
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/deleteFace/{userId}",method = RequestMethod.DELETE)
    public FaceRecognitionResponse deleteFace(@PathVariable("userId") String userId ) throws Exception {
        String result =faceRecognitionService.deleteFace(userId);
        if (RESULT.equals(result)){
            return new FaceRecognitionResponse(CommonCode.SUCCESS, null);
        }
        FaceRecognition faceRecognition=new FaceRecognition();
        //设置错误代码
        faceRecognition.setResult((JSONObject) JSON.parse(result));
        return new FaceRecognitionResponse(CommonCode.FAIL, faceRecognition);
    }
}
