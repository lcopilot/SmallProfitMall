package cn.itcast.domain.shoppingCar;

import org.springframework.stereotype.Component;

import java.io.Serializable;
/**
 * 购物车
 */
@Component
public class ShoppingCart implements Serializable {
    //购物车id
    private Integer shoppingCartId;
    //商品图片
    private String ImageSite;
    //商品名字
    private String ProductName;
    //用户id
    private String userId;
    //商品id
    private Integer productId;
    //商品配置
    private String productDeploy;
    //配置id
    private Integer distinctionId;
    //购买数量
    private Integer quantity;
    //商品重量
    private String productWeight;
    //价格
    private Double ProductPrice;
    //商品库存
    private Double ProductInventory;
    //是否收藏
    private Boolean evaluation;
    //是否有到货通知
    private Boolean notice;
    //该配置库存
    private Integer productInventory;

    public void setProductInventory(Integer productInventory) {
        this.productInventory = productInventory;
    }

    public Integer getDistinctionId() {
        return distinctionId;
    }

    public void setDistinctionId(Integer distinctionId) {
        this.distinctionId = distinctionId;
    }

    public String getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(String productWeight) {
        this.productWeight = productWeight;
    }

    public Boolean getNotice() {
        return notice;
    }

    public void setNotice(Boolean notice) {
        this.notice = notice;
    }

    public String getImageSite() {
        return ImageSite;
    }

    public void setImageSite(String imageSite) {
        ImageSite = imageSite;
    }

    public Boolean getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(Boolean evaluation) {
        this.evaluation = evaluation;
    }

    public Double getProductInventory() {
        return ProductInventory;
    }

    public void setProductInventory(Double productInventory) {
        ProductInventory = productInventory;
    }



    public Integer getShoppingCartId() {
        return shoppingCartId;
    }

    public void setShoppingCartId(Integer shoppingCartId) {
        this.shoppingCartId = shoppingCartId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductDeploy() {
        return productDeploy;
    }

    public void setProductDeploy(String productDeploy) {
        this.productDeploy = productDeploy;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public Double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(Double productPrice) {
        ProductPrice = productPrice;
    }
}
