package cn.itcast.domain.order;

import cn.itcast.domain.address.Address;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.DateTimeException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 订单
 * @author Kite
 * @date 2020/4/3
 */
@Data
public class Order implements Serializable {
    private int id;
    //用户id
    private String userId;
    //订单id
    private String orderId;
    //支付方式
    private Integer paymentWay;
    //配送方式
    private Integer deliveryWay;
    //订单时间
    private Date orderTime;
    //送达时间
    private Date deliveryTime;
    //发货时间
    private Date submitTime;
    //支付时间
    private Date paymentTime;
    //订单备注
    private String orderNote;
    //订单总计
    private BigDecimal orderTotal;
    //用户地址地址
    private Address Address;


    //是否发货
    private Boolean submit;
    //用户是否收货
    private Boolean receipt;
    //商品信息
    List<ProductContent> productContents;

    /**
     * 订单状态  1代表未支付 2代表已支付
     */
    private Integer orderState;

    //返回订单地点
    public OrderAddress orderAddress;

}
