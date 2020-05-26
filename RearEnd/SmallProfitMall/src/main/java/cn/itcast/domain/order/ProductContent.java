package cn.itcast.domain.order;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/4/3
 */
public class ProductContent implements Serializable {
    //id
    private Integer purchaseId;
    //商品id
    private Integer productId;
    //订单id
    private String orderId;
    //商品名字
    private String productName;
    //商品图片
    private String productImage;
    //商品价格
    private Double productPrice;
    //商品配置
    private String productConfiguration;
    //商品配置id
    private Integer distinctionId;
    //购买数量
    private Integer productQuantity;
    //商品重量
    private String productWeight;
    //是否评价
    private Boolean evaluate;
    //商品状态 1为未发货 2为已收货 3为确认收货
    public Integer productState;

    public Integer getDistinctionId() {
        return distinctionId;
    }

    public void setDistinctionId(Integer distinctionId) {
        this.distinctionId = distinctionId;
    }

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
        this.purchaseId = purchaseId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductConfiguration() {
        return productConfiguration;
    }

    public void setProductConfiguration(String productConfiguration) {
        this.productConfiguration = productConfiguration;
    }

    public Integer getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(Integer productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(String productWeight) {
        this.productWeight = productWeight;
    }

    public Boolean getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(Boolean evaluate) {
        this.evaluate = evaluate;
    }

    public Integer getProductState() {
        return productState;
    }

    public void setProductState(Integer productState) {
        this.productState = productState;
    }
}
