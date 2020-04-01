package cn.itcast.util.humanFace;

import com.baidu.aip.face.AipFace;
import com.baidu.aip.face.FaceVerifyRequest;
import com.baidu.aip.face.MatchRequest;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * @author Kite
 * @date 2020/3/31
 */
@Component
public class HumanFaceUtil {
    //设置APPID/AK/SK
    public static final String APP_ID = "19185543";
    public static final String API_KEY = "C9XXG5MPrF2EyFjMDKqUGi4P";
    public static final String SECRET_KEY = "PQI8COHGxNOWyu1ZNsTuXY6oCTzggb5M";

    AipFace client =new AipFace(APP_ID, API_KEY, SECRET_KEY);

    /**
     * 人脸检测
     * @param images
     */
    public  String faceDetection(String images) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("face_field", "age");
        options.put("max_face_num", "2");
        options.put("face_type", "LIVE");
        options.put("liveness_control", "LOW");

        String image = images;
        String imageType = "BASE64";

        // 人脸检测
        JSONObject res = client.detect(image, imageType, options);
       return  res.toString(2);

    }

    /**
     * 活体检测
     * @param images 传入的用户图片
     */
    public String livingBody(String images) {
        String image = images;
        FaceVerifyRequest req = new FaceVerifyRequest(image, "BASE64");
        ArrayList<FaceVerifyRequest> list = new ArrayList<FaceVerifyRequest>();
        list.add(req);
        JSONObject res = client.faceverify(list);
        return  res.toString(2);
    }


    /**
     * 人脸上传
     * @param images 传入图片
     * @param userIds 传入的用户id
     * @return
     */
    public String uploading(String images, String userIds) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("user_info", "user's info");
        options.put("quality_control", "NORMAL");
        options.put("liveness_control", "LOW");
        options.put("action_type", "REPLACE");

        String image = images;
        String imageType = "BASE64";
        String groupId = "payment";
        String userId = userIds;
        // 人脸注册
        JSONObject res = client.addUser(image, imageType, groupId, userId, options);
        return res.toString(2);
    }
    /**
     *人脸比对
     * @param images1
     * @param images2
     */
    public void faceCheck(String images1,String images2) {
        String image1 =images1;
        String image2 = images2;

        // image1/image2也可以为url或facetoken, 相应的imageType参数需要与之对应。
        MatchRequest req1 = new MatchRequest(image1, "BASE64");
        MatchRequest req2 = new MatchRequest(image2, "BASE64");
        ArrayList<MatchRequest> requests = new ArrayList<MatchRequest>();
        requests.add(req1);
        requests.add(req2);

        JSONObject res = client.match(requests);
        System.out.println(res.toString(2));

    }


    //更新人脸
    public String sample(String imagess) {        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("user_info", "user's info");
        options.put("quality_control", "NORMAL");
        options.put("liveness_control", "LOW");
        options.put("action_type", "REPLACE");

        String image = "取决于image_type参数，传入BASE64字符串或URL字符串或FACE_TOKEN字符串";
        String imageType = "BASE64";
        String groupId = "group1";
        String userId = "user1";

        // 人脸更新
        JSONObject res = client.updateUser(image, imageType, groupId, userId, options);
        return res.toString(2);
    }


}
