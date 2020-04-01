package cn.itcast.Test.humanFace;

import com.alibaba.fastjson.JSON;
import com.baidu.aip.face.AipFace;
import com.baidu.aip.face.MatchRequest;
import org.json.JSONObject;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Kite
 * @date 2020/3/31
 */
public class Sample {
    //设置APPID/AK/SK
    public static final String APP_ID = "19185543";
    public static final String API_KEY = "C9XXG5MPrF2EyFjMDKqUGi4P";
    public static final String SECRET_KEY = "PQI8COHGxNOWyu1ZNsTuXY6oCTzggb5M";

    public static void main(String[] args) {
        // 初始化一个AipFace
        AipFace client = new AipFace(APP_ID, API_KEY, SECRET_KEY);

        System.out.println(client);
        // 可选：设置网络连接参数
        client.setConnectionTimeoutInMillis(2000);
        client.setSocketTimeoutInMillis(60000);

        // 可选：设置代理服务器地址, http和socket二选一，或者均不设置
//        client.setHttpProxy("proxy_host", proxy_port);  // 设置http代理
//        client.setSocketProxy("proxy_host", proxy_port);  // 设置socket代理

        // 调用接口
        String image = "取决于image_type参数，传入BASE64字符串或URL字符串或FACE_TOKEN字符串";
        String imageType = "BASE64";

//        // 人脸检测
//        JSONObject res = client.detect(image, imageType, options);
//        System.out.println(res.toString(2));

    }

    //活体检测
    public void sample(AipFace client,String images) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("face_field", "age");
        options.put("max_face_num", "2");
        options.put("face_type", "LIVE");
        options.put("liveness_control", "NORMAL");

        String image = images;
        String imageType = "BASE64";

        // 人脸检测
        JSONObject res = client.detect(image, imageType, options);
        System.out.println( res.toString(2));
        Map maps = (Map) JSON.parse(String.valueOf(res));
      String a = (String) maps.get("error_msg");
        System.out.println(a);

    }

    //人脸对比
    public void sample(AipFace client ,String images1,String images2) {
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

    //人脸商城
    public void sample(AipFace client) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("user_info", "user's info");
        options.put("quality_control", "NORMAL");
        options.put("liveness_control", "LOW");
        options.put("action_type", "REPLACE");

        String image = "取决于image_type参数，传入BASE64字符串或URL字符串或FACE_TOKEN字符串";
        String imageType = "BASE64";
        String groupId = " payment";
        String userId = "user1";

        // 人脸注册
        JSONObject res = client.addUser(image, imageType, groupId, userId, options);
        System.out.println(res.toString(2));

    }
    //人脸上传
    public void uploading(AipFace client ,String images2,String userIds) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("user_info", "user's info");
        options.put("quality_control", "NORMAL");
        options.put("liveness_control", "LOW");
        options.put("action_type", "REPLACE");

        String image = images2;
        String imageType = "BASE64";
        String groupId = "19183991";
        String userId = userIds;

        // 人脸注册
        JSONObject res = client.addUser(image, imageType, groupId, userId, options);
        System.out.println(res.toString(2));

    }
    @Test
    public void test(){
        AipFace client = new AipFace(APP_ID, API_KEY, SECRET_KEY);
        String images1="";
        System.out.println(client);
        //测试人脸对比
      //  sample(client,images1,images1);
         //测试人脸检测
        sample(client,images1);
        //人脸注册
        //uploading(client,images1,"vv");

    }
}