package cn.itcast.response.objectReturn;

import cn.itcast.domain.order.Order;
import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;
import cn.itcast.response.listFootprint.Pagination;
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
