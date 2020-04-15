package cn.itcast.response.returnString;

import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;
import lombok.Data;
import lombok.ToString;

/**
 * @author Kite
 * @date 2020/4/4
 */
@Data
@ToString
public class QueryString extends ResponseResult {
    ResultString resultString;

    public QueryString(ResultCode resultCode, ResultString resultString){
        super(resultCode);
        this.resultString = resultString;
    }
}
