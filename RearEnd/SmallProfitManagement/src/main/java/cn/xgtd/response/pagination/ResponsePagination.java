package cn.xgtd.response.pagination;

import cn.xgtd.response.ResponseResult;
import cn.xgtd.response.ResultCode;
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
