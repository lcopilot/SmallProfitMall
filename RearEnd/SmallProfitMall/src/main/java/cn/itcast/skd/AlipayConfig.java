package cn.itcast.skd;

/**
 * @author Kite
 * @date 2020/4/14
 */
public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016102500754710";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCacbvcnohaFAeBn5oKprDjhvmkFAXtJwLEsy6cDCWaoje2XCkhpenXSrkvrqmVNR/UuPTNtQDYmPBeI/rj8+lWjJzruSyNqSf0Sa1/NE2t8rksw0tCqFnINLoxVqk6mPt1JAfmB9QRsIJtPSYRCH757pbFqQHBAp7g2R8sAO0QER6HQtVb0vcqTxekDBktbxKBRCcijvvjBr6uLFjjj2WPlGwLUOail13NFhLfkDcozQRlx8khk/oLqQcKaMcJFNYTA9kY8Px13Y97wp3W0ZIzTSEmy4Nd4TpLUvz546Qjlh+R3Ct6o0IvNrWGpGc8kEDAfX/0YIJvnYY3osfWi7hFAgMBAAECggEADDur/KqV9ESX352LrwJLCoqbZXKskX9AieIDdBrGM7xbm1crbt3catAhYPR9vDLMBaZsxYprubxLdbl12u5r8g4LM+Sj8ciPQJtBYcz7xiZuomwJnwsEqYX7pYLOvrR1Xm7vLTo7gvcvLYXlaP36SMOsL5XWbLpPaVHpVSvxmw8QjoN/smIhWM6owwOUqIVX5XawQb79aNJunAv1iql7EjpUCm21JZrqNKOBa5ViuOPgEbCAMtMlBuze4fjOYqRo5h4GQ5kb5VlIHu3yiCfP6CA1xPx5CjhNGk+sH43+z9jHuoRfUyKYyNWJrVtpp7v/oJKSdWuqEu/ndyyZ5/G0tQKBgQDNnNEcXRgt3pHKmW/HjpYM/jUlVHSywVJdS0mJCUJ39EMtqUN8416gCbFH1bQsfHmMw47g/xixNics6i5WB/qeQmm6dHJ83gHBhqKkOw71e5C9iLB0y/kEuwAx6ktKTeMF7L0EdRI5owthri+b3Ovv4B3ZcArfiVIpYT82jvdtdwKBgQDAStrBbxSOEf1u42/NcsJQxyKmDkAzvNxnYRUiedZJZfynPbgEu2vXk94CXedei9i4s/9PohhD2YHDTN/twIImVLlEyFQcizmUpErbeKFSGwDk9tA+OXdoR6R9FLfYiSG8uAE5sAHGJZNonOC/L22CBDd0zn/5eBLs1jA5t3KHIwKBgGWZl7rsRYZk9KWoLBPv4TWKZ7iKgx/RZ2GyUiPk73NWv9tQSIjt0VRDddaJQv64g1eLSo7jftASckk/bqYUS0LojlYUNH5/NV7rqHJ+vGWRKXR+lrMgF2y++tmvbITK9+N1l/Eb6GWSq40ZBW1/PRbLJ/TJ6JWMxYytAQ90lc8BAoGACYqtWDPe3T3fSYVXouYy5jc7bOoAHZEdjrOujMtm6rV42AOkAfga3dOkjJGETZi65E9qN9VfRt6gJcTGx9Fpo+VIXDVklxYBgXK1lDZkKuLUJIhqxOutFSuY6ewBQ2lqlya6SNaHAAIVUneWX2ZHFNCIv+8PQp3GsqHeOr7zm+kCgYBrplMYx89RH32jGkSVj8aEcq7jUgmASUengYmGhkpDnFSVn5ykXWiPWA42+84GjoMzhuLkcw6ZdNNVHZwLURAqpIXs3OT1XgYKUcNTpG3Bvk4GHlqggm1sw85/GiU43s88MaVXNp0dUliPV5OarRyIKGHsnaHdxGxCkTXU8wg5hQ==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAomtbaCXaxnj7MqSclzwNLQ9z4TjdjkFkC5EzahVuV1wU0l/THvvT1O7V38bu9NxDvsdZbkppBMjb3e6V6eUQM46/nDYMHDrTPOfXrpTgW1v6vp+SCm9dR/PELx4URRx7KfuR46oGCoOD3Mn9FC3A9uHYMeQxvS2vmxv3lpwmMSyFYQFYeveuVaY57OeQgv4Ik3XtJc20YZC1at5llCi0nqB9yac82DK4NuiIsFiJTVzuNxNHYAYiWRFBI9P9fbSKyZWDCxgZ1tq1sckccfyeESKJtG4mHXuwCxuwz5H+lweL9TffUh+GY+NKGd4QgZUs/e8tM70anT3OeTIzudS82wIDAQAB" ;

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:3167/PayController/payNotify";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:3167/PayController/payNotify";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

}
