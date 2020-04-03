package cn.itcast.domain.order;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.DateTimeException;
import java.util.Date;

/**
 * 订单
 * @author Kite
 * @date 2020/4/3
 */
public class Order implements Serializable {
    //订单id
    private Integer orderId;
    //支付方式
    private Integer paymentWay;
    //配送方式
    private String deliveryWay;
    //订单时间
    private Date orderTime;
    //发货时间
    private Date deliveryTime;
    //支付时间
    private Date paymentTime;
    //订单总计
    private BigDecimal orderTotal;

    //购物车id
    private Integer shoppingCartId;
    //订单备注
    private String orderNote;
    //商品图片
    private String productImage;
    //商品配置
    private String productConfiguration;
    //购买数量
    private Integer productQuantity;



}
