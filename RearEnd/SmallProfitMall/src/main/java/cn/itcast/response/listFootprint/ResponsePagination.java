package cn.itcast.response.listFootprint;

import cn.itcast.response.QueryResult;
import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;
import lombok.Data;
import lombok.ToString;

/**
 * @author Kite
 * @date 2020/4/19
 */
@Data
@ToString
public class ResponsePagination extends ResponseResult {

    Pagination pagination;

    public ResponsePagination(ResultCode resultCode, Pagination pagination){
        super(resultCode);
        this.pagination = pagination;
    }
}
