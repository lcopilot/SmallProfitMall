package cn.itcast.response;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Controller;

@Data
@ToString
public class QueryResponseResult extends ResponseResult {

    QueryResult queryResult;

    public QueryResponseResult(ResultCode resultCode,QueryResult queryResult){
        super(resultCode);
       this.queryResult = queryResult;
    }

}
