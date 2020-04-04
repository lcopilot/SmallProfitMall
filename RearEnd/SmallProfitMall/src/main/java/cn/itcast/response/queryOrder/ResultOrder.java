package cn.itcast.response.queryOrder;

import cn.itcast.domain.order.Order;
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
public class ResultOrder {
    //是否开启人脸
    private Boolean faceRecognition;
    //是否设置支付密码
    private Boolean paymentPassword;
    //订单信息
    private Order order;
}
