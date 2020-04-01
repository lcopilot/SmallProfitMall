package cn.itcast.response.faceRecognition;

import com.alibaba.fastjson.JSONObject;
import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

/**
 * @author Kite
 * @date 2020/3/31
 */

@Data
@ToString
@Component
public class FaceRecognition {

    private JSONObject Result;
}
