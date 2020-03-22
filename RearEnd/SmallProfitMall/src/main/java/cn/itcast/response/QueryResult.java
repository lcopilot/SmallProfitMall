package cn.itcast.response;

import java.util.List;

;
import cn.itcast.domain.user.User;
import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

/**
 * @Author: mrt.
 * @Description:
 * @Date:Created in 2018/1/24 18:33.
 * @Modified By:
 */
@Data
@ToString
@Component
public class QueryResult<T> {

    //数据列表
    private List<T> list;

    //数据总数
    private long total;



}
