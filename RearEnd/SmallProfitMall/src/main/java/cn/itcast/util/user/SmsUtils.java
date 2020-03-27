package cn.itcast.util.user;


import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 短信API产品的DEMO程序,工程中包含了一个SmsDemo类，直接通过 执行main函数即可体验短信产品API功能(只需要将AK替换成开通了云通信-短信产品功能的AK即可)
 * 工程依赖了2个jar包(存放在工程的libs目录下) 1:aliyun-java-sdk-core.jar 2:aliyun-java-sdk-dysmsapi.jar
 * 备注:Demo工程编码采用UTF-8
 */
@Controller("sm")
public class SmsUtils {

    // 产品名称:云通信短信API产品,开发者无需替换
    static final String product = "Dysmsapi";
    // 产品域名,开发者无需替换
    static final String domain = "dysmsapi.aliyuncs.com";

    // 此处需要替换成开发者自己的AK(在阿里云访问控制台寻找)，非常重要。不要泄露给其他人
    static final String accessKeyId = "LTAI4FukgEjff3TXrQcLg56o";
    static final String accessKeySecret = "ZAJtjljcEhwX9vPjenyJRA1C9148xC";


    public static boolean sendRegistSms(String phone, String code) throws ClientException {
        return sendSms(phone, code, "SMS_180047090");
    }
    public static boolean sendLoginSms(String phone, String code) throws ClientException {
        return sendSms(phone, code, "SMS_180956525");
    }
    public static boolean forgetPassword(String phone, String code) throws ClientException {
        return sendSms(phone, code, "SMS_184210080");
    }

    public static boolean updatePhone(String phone, String code) throws ClientException {
        return sendSms(phone, code, "SMS_184210080");
    }

    public static QuerySendDetailsResponse querySendDetails(String bizId) throws ClientException {

        // 可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        // 初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile
                .getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        // 组装请求对象
        QuerySendDetailsRequest request = new QuerySendDetailsRequest();
        // 必填-号码
        request.setPhoneNumber("15000000000");
        // 可选-流水号
        request.setBizId(bizId);
        // 必填-发送日期 支持30天内记录查询，格式yyyyMMdd
        SimpleDateFormat ft = new SimpleDateFormat("yyyyMMdd");
        request.setSendDate(ft.format(new Date()));
        // 必填-页大小
        request.setPageSize(10L);
        // 必填-当前页码从1开始计数
        request.setCurrentPage(1L);

        // hint 此处可能会抛出异常，注意catch
        QuerySendDetailsResponse querySendDetailsResponse = null;
        try {
            querySendDetailsResponse = acsClient.getAcsResponse(request);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return querySendDetailsResponse;
    }

    public static void main(String[] args) throws ClientException {
       Boolean b = sendLoginSms("18598814121","7845");
        System.out.println(b);
    }

    /**
     * 发送手机短信的方法
     *
     * @param phone 手机号
     * @param code  验证码
     * @return
     * @throws ClientException
     */
    public static boolean sendSms(String phone, String code, String CODE) throws ClientException {
        // 可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        // 初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile
                .getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient client = new DefaultAcsClient(profile);
        // 组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();

        // 必填:待发送手机号
        request.setPhoneNumbers(phone);

        // 必填:短信签名-可在短信控制台中找到
        request.setSignName("SmallProfit");
        // 必填:短信模板-可在短信控制台中找到
        request.setTemplateCode(CODE);

        // 可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"code\":\"" + code + "\"}");
        // 可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        request.setOutId("yourOutId");
        // hint 此处可能会抛出异常，注意catch
        SendSmsResponse sendSmsResponse = null;
        try {
            sendSmsResponse = client.getAcsResponse(request);
            System.out.println(sendSmsResponse.getMessage());
            //短信发送状态
            if ("OK".equalsIgnoreCase(sendSmsResponse.getCode())) {
                return true;

            }
            ;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


}