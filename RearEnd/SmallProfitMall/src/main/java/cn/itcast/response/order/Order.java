package cn.itcast.response.order;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

/**
 * @author Kite
 * @date 2020/4/3
 */
@Data
@ToString
@Component
public class Order<T> {
    private String orderId;
}
