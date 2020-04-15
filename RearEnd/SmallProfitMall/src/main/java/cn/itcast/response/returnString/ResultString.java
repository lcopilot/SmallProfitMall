package cn.itcast.response.returnString;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

/**
 * 订单返回
 * @author Kite
 * @date 2020/4/4
 */
@Data
@ToString
@Component
public class ResultString {
    private String string;
}
