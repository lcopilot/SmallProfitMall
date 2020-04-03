package cn.itcast.domain.order;

/**
 * @author Kite
 * @date 2020/4/3
 */
public class ProductContent {
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
    //购买数量
    private Integer productQuantity;
    //商品重量
    private String productWeight;
    //是否评价
    private Boolean evaluate;

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Boolean getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(Boolean evaluate) {
        this.evaluate = evaluate;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductConfiguration() {
        return productConfiguration;
    }

    public void setProductConfiguration(String productConfiguration) {
        this.productConfiguration = productConfiguration;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
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

    @Override
    public String toString() {
        return "ProductContent{" +
                "orderId=" + orderId +
                ", productName='" + productName + '\'' +
                ", productImage='" + productImage + '\'' +
                ", productPrice=" + productPrice +
                ", productConfiguration='" + productConfiguration + '\'' +
                ", productQuantity=" + productQuantity +
                ", evaluate=" + evaluate +
                '}';
    }
}
