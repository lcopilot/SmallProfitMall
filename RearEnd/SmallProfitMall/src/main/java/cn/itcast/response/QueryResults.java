package cn.itcast.response;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.util.List;
/**
 * @Author: mrt.
 * @Description:
 * @Date:Created in 2018/1/24 18:33.
 * @Modified By:
 */
@Data
@ToString
@Component
public class QueryResults {
    private  List<?>[] addressList;
}
