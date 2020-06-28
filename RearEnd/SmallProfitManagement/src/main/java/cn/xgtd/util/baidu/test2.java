//package cn.xgtd.util.baidu;
//
///**
// * @author Kite
// * @date 2020/6/27
// */
//public class test2 {
//
//
//    public static void main(String[] args) {
//
//        try {
//            JSONObject header = new JSONObject();
//            header.put("username", "baidu-铺海电子-A18KA1012");
//            header.put("password", "Puhai2018");
//            header.put("token", "73430b9205052155d105c7e32495e6be");
//            header.put("account_type", "1");
//            //String urlStr = "https://api.baidu.com/json/tongji/v1/ReportService/getSiteList";
//            String urlStr = "https://api.baidu.com/json/tongji/v1/ReportService/getData";
//            String charset = "utf-8";
//            JSONObject body = new JSONObject();
//            body.put("siteId", "12241771");
//            body.put("method","overview/getTimeTrendRpt");//需要获取的数据
//            body.put("start_date", "20180723");
//            body.put("end_date", "20180724");
//            body.put("metrics", "pv_count,visitor_count,ip_count"); //指标，数据单位
//            JSONObject params = new JSONObject();
//            params.put("header",header );
//            params.put("body", body);
//            byte[] res = HttpUtils.post(urlStr, params.toString(), charset);
//            String s = new String(res);
//            System.out.println(s);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}
