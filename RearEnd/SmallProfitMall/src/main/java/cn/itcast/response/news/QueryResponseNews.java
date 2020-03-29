package cn.itcast.response.news;

import cn.itcast.response.QueryResult;
import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class QueryResponseNews extends ResponseResult {

    Page page;

    public QueryResponseNews(ResultCode resultCode, Page page){
        super(resultCode);
       this.page = page;
    }


}
