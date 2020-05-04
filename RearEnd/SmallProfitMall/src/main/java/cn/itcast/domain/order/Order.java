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
public class Order implements Serializable {
    private Integer  purchaseId;
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

    //商品信息
    List<ProductContent> productContents;
    /**订单状态  1代表未支付 2代表已支付**/
    private Integer orderState;

    //返回订单地点
    public OrderAddress orderAddress;

    //用户地址地址
    private Address address;

    //订单修改次数
    private Integer changeQuantity;

    //是否可删订单
    private Integer sign;

    public Integer getSign() {
        return sign;
    }

    public void setSign(Integer sign) {
        this.sign = sign;
    }

    public Integer getChangeQuantity() {
        return changeQuantity;
    }

    public void setChangeQuantity(Integer changeQuantity) {
        this.changeQuantity = changeQuantity;
    }

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
        this.purchaseId = purchaseId;
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

    public Integer getOrderState() {
        return orderState;
    }

    public void setOrderState(Integer orderState) {
        this.orderState = orderState;
    }

    public OrderAddress getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(OrderAddress orderAddress) {
        this.orderAddress = orderAddress;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
}
