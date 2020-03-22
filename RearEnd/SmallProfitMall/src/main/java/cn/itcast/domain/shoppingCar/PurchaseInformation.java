package cn.itcast.domain.shoppingCar;

import org.springframework.stereotype.Component;

import java.io.Serializable;
@Component
public class PurchaseInformation implements Serializable {
    private String userId;          //用户id
    private int pid;
    private String ProductName;         //商品名字
    private Double ProductPrice;         //商品价格
    private Double ProductInventory;    //商品库存
    private String size;                //尺寸(返回前端）
    private String colour;              //颜色(返回前端）
    private String combo;               //套餐(返回前端）
    private String specification;       //规格(返回前端）
    private String taste;               //口味(返回前端）
    private String kind;                //商品种类
    private String version;             //商品版本
    private Integer quantity;           //购买数量

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

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
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
                ", pid=" + pid +
                ", ProductName='" + ProductName + '\'' +
                ", ProductPrice=" + ProductPrice +
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
