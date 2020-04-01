package cn.itcast.response.faceRecognition;

import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;
import cn.itcast.response.news.Page;
import lombok.Data;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;

@Data
@ToString
public class FaceRecognitionResponse extends ResponseResult {

    @Autowired
    FaceRecognition faceRecognition;

    public FaceRecognitionResponse(ResultCode resultCode, FaceRecognition faceRecognition){
        super(resultCode);
       this.faceRecognition = faceRecognition;
    }


}
