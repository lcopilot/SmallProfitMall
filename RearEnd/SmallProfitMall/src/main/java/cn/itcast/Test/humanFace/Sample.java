package cn.itcast.Test.humanFace;

import com.alibaba.fastjson.JSON;
import com.baidu.aip.face.AipFace;
import com.baidu.aip.face.MatchRequest;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.ibatis.io.Resources;
import org.json.JSONObject;
import org.junit.jupiter.api.Test;
import org.apache.commons.io.IOUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
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

    //人脸
    public void sample(AipFace client,String images) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("face_field", "beauty");
        options.put("max_face_num", "2");
        options.put("face_type", "LIVE");
        options.put("liveness_control", "LOW");

        String image = images;
        String imageType = "BASE64";

        // 人脸检测
        JSONObject res = client.detect(image, imageType, options);
        System.out.println(res.toString(2));

    }

    //人脸对比
    public void sample(AipFace client ,String images1,String images2) {
        String image1 ="cb856487ee7eef12dd5cd2cea6dddc4a";
        String image2 = images2;

        // image1/image2也可以为url或facetoken, 相应的imageType参数需要与之对应。
        MatchRequest req1 = new MatchRequest(image1, "FACE_TOKEN");
        MatchRequest req2 = new MatchRequest(image2, "BASE64");
        ArrayList<MatchRequest> requests = new ArrayList<MatchRequest>();
        requests.add(req1);
        requests.add(req2);

        JSONObject res = client.match(requests);
        System.out.println(res.toString(2));

    }

    //人脸上传
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

    //语言校验
    public String  voiceDetection(AipFace client) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("appid", "19185543");


        // 语音校验码接口
        JSONObject res = client.videoSessioncode( options);
        Map map = JSON.parseObject(String.valueOf(res), Map.class);
        String result = (String) map.get("session_id");
        System.out.println(res.toString(2));
        return result;


    }

    //视频活体检测
    public void video(AipFace client ,String session, InputStream inputStream) throws IOException {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();

        String sessionId = "110233112299822211";


        // 参数为二进制数组
        byte[] file = IOUtils.toByteArray(inputStream);
        JSONObject res = client.videoFaceliveness(sessionId, file, options);
        System.out.println(res.toString(2));
    }


    /**
     * @author  李光光(编码小王子)
     * @date    2018年6月28日 下午2:09:26
     * @version 1.0
     */
        public static String getBase64FromInputStream(InputStream in) {
            // 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
            byte[] data = null;
            // 读取图片字节数组
            try {
                ByteArrayOutputStream swapStream = new ByteArrayOutputStream();
                byte[] buff = new byte[100];
                int rc = 0;
                while ((rc = in.read(buff, 0, 100)) > 0) {
                    swapStream.write(buff, 0, rc);
                }
                data = swapStream.toByteArray();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {

                        e.printStackTrace();
                    }
                }
            }
            return new String(Base64.encodeBase64(data));
        }


    public void delete(AipFace client) {
        // 传入可选参数调用接口
        HashMap<String, String> options = new HashMap<String, String>();

        String groupId = "payment";
        String userId = "f92b9f8f372e445fb6564cdd57aa3c3e";

        // 删除用户
        JSONObject res = client.deleteUser(groupId, userId, options);
        System.out.println(res.toString(2));

    }

    @Test
    public void test() throws IOException {
        AipFace client = new AipFace(APP_ID, API_KEY, SECRET_KEY);
            String images1="";
           String images2 = "";
//        System.out.println(client);
       // 测试人脸对比
        sample(client,images1,images2);
//         测试人脸检测
        sample(client,images1);
//        人脸注册
//        uploading(client,images1,"vv");
//        语音检测
//        String result = voiceDetection(client);
//        File file1 = new File("E:\\v.mp4");
//        System.out.println(file1);
//        byte[] bytes = IOUtils.toByteArray(inputStream);
//        String encoded = Base64.getEncoder().encodeToString(bytes);
//        InputStream input = new FileInputStream(file1);
//        System.out.println(input);
//        视频活体检测
//        video(client,result,input);
        //删除
        delete(client);

    }
}