package cn.itcast.domain.shoppingCar;

import org.springframework.stereotype.Component;

import java.io.Serializable;
@Component
public class ShoppingCart implements Serializable {
    private Integer shoppingCartId; //购物车id
    private String productName;     //商品名字
    private String userId;          //用户id
    private Integer productId;      //商品id
    private String productDeploy;   //商品配置
    private Integer quantity;       //购买数量
    private Double productPrice;    //价格
    private Double ProductInventory;    //商品库存

    public Double getProductInventory() {
        return ProductInventory;
    }

    public void setProductInventory(Double productInventory) {
        ProductInventory = productInventory;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
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

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }
}
