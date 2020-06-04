package cn.xgtd.response.objectReturn;


import cn.xgtd.response.ResponseResult;
import cn.xgtd.response.ResultCode;
import lombok.Data;
import lombok.ToString;

/**
 * @author Kite
 * @date 2020/4/24
 */
@Data
@ToString
public class ObjectReturnResponse extends ResponseResult {
    ObjectReturn objectReturn;

    public ObjectReturnResponse(ResultCode resultCode, ObjectReturn objectReturn){
        super(resultCode);
        this.objectReturn = objectReturn;
    }
}
