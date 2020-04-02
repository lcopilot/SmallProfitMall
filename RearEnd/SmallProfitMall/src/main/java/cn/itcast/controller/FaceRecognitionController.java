package cn.itcast.controller;

import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.ResultCode;
import cn.itcast.response.faceRecognition.FaceRecognition;
import cn.itcast.response.faceRecognition.FaceRecognitionResponse;
import cn.itcast.service.FaceRecognitionService;
import cn.itcast.util.humanFace.HumanFaceUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
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


    @Autowired
    FaceRecognitionService faceRecognitionService;

    /**
     * 人脸上传
     * @param image 用户人图片
     * @param userId 用户id
     * @param videoFile 视频流
     * @return
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
        if (result.equals("SUCCESS")){
            return new FaceRecognitionResponse(CommonCode.SUCCESS, null);
        }
        FaceRecognition faceRecognition=new FaceRecognition();
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
        if (result.equals("SUCCESS")){
            return new FaceRecognitionResponse(CommonCode.SUCCESS, null);
        }
        FaceRecognition faceRecognition=new FaceRecognition();
        faceRecognition.setResult((JSONObject) JSON.parse(result));
        return new FaceRecognitionResponse(CommonCode.FAIL, faceRecognition);
    }
}
