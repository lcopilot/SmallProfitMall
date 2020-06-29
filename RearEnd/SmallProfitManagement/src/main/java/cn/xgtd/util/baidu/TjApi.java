package cn.xgtd.util.baidu;

import com.alibaba.fastjson.JSONObject;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TjApi {


    /**
     * 查询访问数据
     * @param gran
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @return
     */
    public static String TjApi(String gran,String startDate , String endDate) {
        // TODO Auto-generated method stub
        try {

            JSONObject header = new JSONObject();
            header.put("username", "橘子味雪糕");//用户名
            header.put("password", "Qwerty2");//用户密码
            header.put("token", "3b81b6f223ae02d0808146e0cf89d7fc");//申请到的token
            header.put("account_type", "1");

            JSONObject body = new JSONObject();
            body.put("site_id", "15263601");
            body.put("start_date", startDate);
            body.put("end_date", endDate);
            body.put("metrics", "visitor_count");
            body.put("method", "trend/time/a");
            body.put("gran", gran);


            String urlStr = "https://api.baidu.com/json/tongji/v1/ReportService/getData";
            String charset = "utf-8";
            JSONObject params = new JSONObject();
            params.put("header", header);
            params.put("body", body);
            byte[] res = HttpsUtil.post(urlStr, params.toString(), charset);
            String result = new String(res);
            return result;
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();

        }
        return null;
    }


}


