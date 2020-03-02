//package cn.itcast.Test;
//
//
//import com.qiniu.base.AccountMgr;
//import com.qiniu.common.QiniuException;
//import com.qiniu.common.Zone;
//import com.qiniu.http.Response;
//import com.qiniu.storage.Configuration;
//import com.qiniu.storage.UploadManager;
//import com.qiniu.util.Auth;
//import com.qiniu.util.StringMap;
//
///**
// * 七牛：覆盖上传
// *
// * @author xuhuanchao
// *
// */
//public class OverrideUpload {
//
//    //获取授权对象
//    Auth auth = Auth.create(AccountMgr.ACCESS_KEY, AccountMgr.SECRET_KEY);
//
//    //第一种方式: 指定具体的要上传的zone
//    //注：该具体指定的方式和以下自动识别的方式选择其一即可
//    //要上传的空间(bucket)的存储区域为华东时
//    // Zone z = Zone.zone0();
//    //要上传的空间(bucket)的存储区域为华北时
//    // Zone z = Zone.zone1();
//    //要上传的空间(bucket)的存储区域为华南时
//    // Zone z = Zone.zone2();
//
//    //第二种方式: 自动识别要上传的空间(bucket)的存储区域是华东、华北、华南。
//    Zone zone = Zone.autoZone();
//
//    Configuration config = new Configuration(zone);
//    UploadManager uploadManager = new UploadManager(config);
//
//    /**
//     * 获取凭证
//     * @param bucketName
//     *           空间名称
//     * @return
//     */
//    public String getUpToken(String bucketName, String key) {
//        //insertOnly 如果希望只能上传指定key的文件，并且不允许修改，那么可以将下面的 insertOnly 属性值设为 1
//        return auth.uploadToken(bucketName, key, 3600, new StringMap().put("insertOnly", 0));
//    }
//
//    /**
//     * 覆盖上传
//     * @param path
//     *            上传文件路径
//     * @param bucketName
//     *            空间名
//     * @param key
//     *            文件名
//     */
//    public void overrideUpload(String path, String bucketName, String key) {
//        try {
//            String token = getUpToken(bucketName, key);//获取 token
//            Response response = uploadManager.put(path, key, token);//执行上传，通过token来识别 该上传是“覆盖上传”
//            System.out.println(response.toString());
//        } catch (QiniuException e) {
//            System.out.println(e.response.statusCode);
//            e.printStackTrace();
//        }
//    }
//
//    /**
//     * 主函数：测试
//     *
//     * @param args
//     */
//    public static void main(String[] args) {
//        // 上传文件的路径，因为在Mac下，所以路径和windows下不同
//        String filePath = "/Users/xuhuanchao/Documents/admin/mind/imgs/admin_3.jpg";
//        // 要上传的空间
//        String bucketName = "java-bucket";
//        // 上传到七牛后保存的文件名
//        String key = "admin_3.jpg";
//
//        new OverrideUpload().overrideUpload(filePath, bucketName, key);
//    }
//
//}
