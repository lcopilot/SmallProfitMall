package cn.itcast.domain.shoppingCar;

import org.springframework.stereotype.Component;

import java.io.Serializable;
@Component
public class PurchaseInformation implements Serializable {
    /**用户id**/
    private String userId;
    /**商品id**/
    private Integer productId;
    /**配置id**/
    private Integer distinctionId;
    /**商品名字**/
    private String ProductName;
    /**商品价格**/
    private Double ProductPrice;
    /**商品库存**/
    private Double ProductInventory;
    /**商品重量**/
    private String ProductWeight;
    /**尺寸(返回前端）**/
    private String size;
    /**颜色(返回前端）**/
    private String colour;
    /**套餐(返回前端）**/
    private String combo;
    /**规格(返回前端）**/
    private String specification;
    /**口味(返回前端）**/
    private String taste;
    /**商品种类**/
    private String kind;
    /**商品版本**/
    private String version;
    /**购买数量**/
    private Integer quantity;


    public Integer getDistinctionId() {
        return distinctionId;
    }

    public void setDistinctionId(Integer distinctionId) {
        this.distinctionId = distinctionId;
    }

    public String getProductWeight() {
        return ProductWeight;
    }

    public void setProductWeight(String productWeight) {
        ProductWeight = productWeight;
    }

    public Double getProductInventory() {
        return ProductInventory;
    }

    public void setProductInventory(Double productInventory) {
        ProductInventory = productInventory;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getProductId() {
        return productId;
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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public String getCombo() {
        return combo;
    }

    public void setCombo(String combo) {
        this.combo = combo;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public String getTaste() {
        return taste;
    }

    public void setTaste(String taste) {
        this.taste = taste;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    @Override
    public String toString() {
        return "PurchaseInformation{" +
                "userId='" + userId + '\'' +
                ", productId=" + productId +
                ", ProductName='" + ProductName + '\'' +
                ", ProductPrice=" + ProductPrice +
                ", ProductInventory=" + ProductInventory +
                ", size='" + size + '\'' +
                ", colour='" + colour + '\'' +
                ", combo='" + combo + '\'' +
                ", specification='" + specification + '\'' +
                ", taste='" + taste + '\'' +
                ", kind='" + kind + '\'' +
                ", version='" + version + '\'' +
                ", quantity=" + quantity +
                '}';
    }
}
