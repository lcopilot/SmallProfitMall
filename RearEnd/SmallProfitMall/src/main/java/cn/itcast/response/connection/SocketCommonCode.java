package cn.itcast.response.connection;

import cn.itcast.response.ResultCode;
import lombok.ToString;

/**
 * @Author: mrt.
 * @Description:
 * @Date:Created in 2018/1/24 18:33.
 * @Modified By:
 */

@ToString
public enum SocketCommonCode implements ResultCode{
    redis(true,82000,"返回消息"),
    normal(true,81000,"webSocket连接正常"),;


//   private static ImmutableMap<Integer, CommonCode> codes ;
    //操作是否成功
    boolean success;
    //操作代码
    int code;
    //提示信息
    String message;

    private SocketCommonCode(boolean success, int code, String message){
        this.success = success;
        this.code = code;
        this.message = message;
    }
    private SocketCommonCode(boolean success, int code, String message, String redis){
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
