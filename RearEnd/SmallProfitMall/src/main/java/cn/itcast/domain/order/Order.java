package cn.itcast.domain.order;

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
public class Order implements Serializable {
    private int id;
    //用户id
    private String userId;
    //订单id
    private String orderId;
    //支付方式
    private Integer paymentWay;
    //购物车id
    private Integer[] shoppingCartId;
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

    //商品信息
    List<ProductContent> productContents;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Integer getPaymentWay() {
        return paymentWay;
    }

    public void setPaymentWay(Integer paymentWay) {
        this.paymentWay = paymentWay;
    }

    public Integer[] getShoppingCartId() {
        return shoppingCartId;
    }

    public void setShoppingCartId(Integer[] shoppingCartId) {
        this.shoppingCartId = shoppingCartId;
    }

    public Integer getDeliveryWay() {
        return deliveryWay;
    }

    public void setDeliveryWay(Integer deliveryWay) {
        this.deliveryWay = deliveryWay;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Date getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(Date deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    public Date getPaymentTime() {
        return paymentTime;
    }

    public void setPaymentTime(Date paymentTime) {
        this.paymentTime = paymentTime;
    }

    public String getOrderNote() {
        return orderNote;
    }

    public void setOrderNote(String orderNote) {
        this.orderNote = orderNote;
    }

    public BigDecimal getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(BigDecimal orderTotal) {
        this.orderTotal = orderTotal;
    }

    public List<ProductContent> getProductContents() {
        return productContents;
    }

    public void setProductContents(List<ProductContent> productContents) {
        this.productContents = productContents;
    }
}
