package cn.itcast.response;

import lombok.ToString;
import org.springframework.stereotype.Controller;

/**
 * @Author: mrt.
 * @Description:
 * @Date:Created in 2018/1/24 18:33.
 * @Modified By:
 */

@ToString
public enum CommonCode implements ResultCode{
    redis(true,82000,"返回消息"),
    same(false,10007,"跟原有信息相同"),
    normal(true,81000,"webSocket连接正常"),
    nameError(false,10008,"不可以使用初始名登录"),
    ValidationFails(false,10009,"人机验证失败"),
    INVALID_PARAM(false,10003,"参数非法"),
    SUCCESS(true,10000,"操作成功！"),
    PARTIALLY_SUCCESS(true,11000,"部分成功"),
    FAIL(false,11111,"操作失败！"),
    FALL_USER_REGISTER(false,11211,"用户已存在!"),
    UNAUTHENTICATED(false,10001,"此操作需要登陆系统！"),
    UNAUTHORISE(false,10002,"权限不足，无权操作！"),
    SERVER_ERROR(false,99999,"抱歉，系统繁忙，请稍后重试！");


//   private static ImmutableMap<Integer, CommonCode> codes ;
    //操作是否成功
    boolean success;
    //操作代码
    int code;
    //提示信息
    String message;

    private CommonCode(boolean success,int code, String message){
        this.success = success;
        this.code = code;
        this.message = message;
    }
    private CommonCode(boolean success,int code, String message,String redis){
        this.success = success;
        this.code = code;
        this.message = message;
    }

    @Override
    public boolean success() {
        return success;
    }
    @Override
    public int code() {
        return code;
    }

    @Override
    public String message() {
        return message;
    }


}
