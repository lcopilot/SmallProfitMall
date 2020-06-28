//package cn.xgtd.util.baidu;
//
///**
// * @author Kite
// * @date 2020/6/27
// */
//
//// 调用 https://api.baidu.com/json/tongji/v1/ReportService/getSiteList 接口获得siteId的列表
//
//public class Test {
//
//    public static void main(String[] args) {
//
//        try {
//            JSONObject header = new JSONObject();
//            // 账号名
//            header.put("username", "baidu-铺海电子-A18KA1012");
//            // 密码
//            header.put("password", "Puhai2018");
//            // 申请到的token值
//            header.put("token", "73430b9205052155d105c7e32495e6be");
//            header.put("account_type", "1");
//            String urlStr = "https://api.baidu.com/json/tongji/v1/ReportService/getSiteList";
//            String charset = "utf-8";
//            JSONObject params = new JSONObject();
//            params.put("header",header );
//            byte[] res = HttpUtils.post(urlStr, params.toString(), charset);
//            String s = new String(res);
//            System.out.println(s);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//    }
//
//}
