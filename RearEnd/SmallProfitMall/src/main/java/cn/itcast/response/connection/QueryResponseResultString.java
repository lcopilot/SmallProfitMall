package cn.itcast.response.connection;

import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;
import lombok.Data;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import lombok.Data;
/**
 * @author Kite
 * @date 2020/3/28
 */
@Data
@ToString
public class QueryResponseResultString extends ResponseResult{

    @Autowired
    QueryResultString queryResultString;

    public QueryResponseResultString(ResultCode resultCode, QueryResultString queryResultString) {
        super(resultCode);
        this.queryResultString = queryResultString;
    }
}
