package cn.xgtd.response.list;

import cn.xgtd.response.ResponseResult;
import cn.xgtd.response.ResultCode;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class QueryResponseResult extends ResponseResult {

    QueryResult queryResult;

    public QueryResponseResult(ResultCode resultCode, QueryResult queryResult){
        super(resultCode);
       this.queryResult = queryResult;
    }

}
