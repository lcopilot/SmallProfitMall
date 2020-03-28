package cn.itcast.response.connection;

import cn.itcast.response.CommonCode;
import cn.itcast.response.Response;
import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;

/**
 * @author Kite
 * @date 2020/3/28
 */
public class ResponseResultString implements Response {
    //操作是否成功
    boolean success = SUCCESS;

    //操作代码
    int code = SUCCESS_CODE;

    //提示信息
    String message;

    public ResponseResultString(ResultCode resultCode){
        this.success = resultCode.success();
        this.code = resultCode.code();
        this.message = resultCode.message();
    }

    public static ResponseResult SUCCESS(){
        return new ResponseResult(CommonCode.SUCCESS);
    }
    public static ResponseResult FAIL(){
        return new ResponseResult(CommonCode.FAIL);
    }

}
