package cn.xgtd.response.Return;


import cn.xgtd.response.ResponseResult;
import cn.xgtd.response.ResultCode;
import lombok.Data;
import lombok.ToString;

/**
 * @author Kite
 * @date 2020/4/24
 */
@Data
@ToString
public class ResultContent extends ResponseResult {
    Results results;

    public ResultContent(ResultCode resultCode, Results results){
        super(resultCode);
        this.results = results;
    }
}
