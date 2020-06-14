package cn.xgtd.response.Return;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

/**
 * @author Kite
 * @date 2020/4/24
 */
@Data
@ToString
@Component
public class Results<T> {

    private Object data;
}
