package cn.itcast.domain.order;

import java.io.Serializable;

/**
 * 订单数量
 * @author Kite
 * @date 2020/4/24
 */
public class OrderQuantity implements Serializable {
    //所有订单数量
    public Integer orderAllQuantity;
    //未付款订单数量
    public Integer orderUnpaidQuantity;
    //待发货数量
    public Integer orderPaidQuantity;
    //待评价数量
    public Integer evaluateQuantity;
    //退货数量
    public Integer salesReturnQuantity;

    public Integer getOrderAllQuantity() {
        return orderAllQuantity;
    }

    public void setOrderAllQuantity(Integer orderAllQuantity) {
        this.orderAllQuantity = orderAllQuantity;
    }

    public Integer getOrderUnpaidQuantity() {
        return orderUnpaidQuantity;
    }

    public void setOrderUnpaidQuantity(Integer orderUnpaidQuantity) {
        this.orderUnpaidQuantity = orderUnpaidQuantity;
    }

    public Integer getOrderPaidQuantity() {
        return orderPaidQuantity;
    }

    public void setOrderPaidQuantity(Integer orderPaidQuantity) {
        this.orderPaidQuantity = orderPaidQuantity;
    }

    public Integer getEvaluateQuantity() {
        return evaluateQuantity;
    }

    public void setEvaluateQuantity(Integer evaluateQuantity) {
        this.evaluateQuantity = evaluateQuantity;
    }

    public Integer getSalesReturnQuantity() {
        return salesReturnQuantity;
    }

    public void setSalesReturnQuantity(Integer salesReturnQuantity) {
        this.salesReturnQuantity = salesReturnQuantity;
    }
}
