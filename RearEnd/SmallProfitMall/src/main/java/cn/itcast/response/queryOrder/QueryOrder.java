package cn.itcast.response.queryOrder;

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
public class QueryOrder extends ResponseResult {
    ResultOrder resultOrder;

    public QueryOrder(ResultCode resultCode, ResultOrder resultOrder){
        super(resultCode);
        this.resultOrder = resultOrder;
    }
}
