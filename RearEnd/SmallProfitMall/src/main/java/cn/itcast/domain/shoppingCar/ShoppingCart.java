package cn.itcast.domain.shoppingCar;

import org.springframework.stereotype.Component;

import java.io.Serializable;
/**
 * 购物车
 */
@Component
public class ShoppingCart implements Serializable {
    private Integer shoppingCartId; //购物车id
    private String ImageSite;   //商品图片
    private String ProductName;     //商品名字
    private String userId;          //用户id
    private Integer productId;      //商品id
    private String productDeploy;   //商品配置
    private Integer distinctionId;  //配置id
    private Integer quantity;       //购买数量
    private String productWeight; //商品重量
    private Double ProductPrice;    //价格
    private Double ProductInventory;    //商品库存
    private Boolean evaluation;         //是否收藏
    private Boolean notice;             //是否有到货通知

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
