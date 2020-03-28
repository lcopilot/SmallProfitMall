package cn.itcast.response.connection;

import cn.itcast.response.ResultCode;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/3/28
 */
public class QueryResponseResultString extends ResponseResultString implements Serializable {

    @Autowired
    QueryResultString queryResultString;

    public QueryResponseResultString(ResultCode resultCode, QueryResultString queryResultString) {
        super(resultCode);
        this.queryResultString = queryResultString;
    }

}
