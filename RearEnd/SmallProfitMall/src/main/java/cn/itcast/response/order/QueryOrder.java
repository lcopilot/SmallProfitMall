package cn.itcast.response.order;

/**
 * @author Kite
 * @date 2020/4/3
 */
import cn.itcast.response.ResponseResult;
import cn.itcast.response.ResultCode;
import cn.itcast.response.news.Page;
import lombok.Data;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;

@Data
@ToString
public class QueryOrder extends ResponseResult {
    Order order;
    public QueryOrder(ResultCode resultCode, Order order) {
        super(resultCode);
        this.order = order;
    }
}
