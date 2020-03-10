package cn.itcast.domain.ProductDatails;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Arrays;

@Component
public class ProductDetailsResult implements Serializable {
    private int id;
    private String pid;
    private String productName;         //商品名字
    private Double productPrice;         //商品价格
    private String sales;               //商品销售量
    private String weight;              //重量
    private String inventory;       //库存
    private String freeShipping;    //是否包邮
    private String video;           //视频
    private String[] size;               //尺寸(返回前端）
    private String[] colour;              //颜色(返回前端）
    private String[] combo;                 //套餐(返回前端）
    private String[] specification;         //规格(返回前端）
    private String[] imageSite;           //图片（返回前端）
    private String[] taste;             //口味(返回前端）
    private String[] kind;              //商品种类
    private String[] version;           //商品版本
    private int inventorys;             //库存

    public String[] getVersion() {
        return version;
    }

    public void setVersion(String[] version) {
        this.version = version;
    }

    public String[] getKind() {
        return kind;
    }

    public void setKind(String[] kind) {
        this.kind = kind;
    }

    public int getInventorys() {
        return inventorys;
    }

    public void setInventorys(int inventorys) {
        this.inventorys = inventorys;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public String getSales() {
        return sales;
    }

    public void setSales(String sales) {
        this.sales = sales;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getInventory() {
        return inventory;
    }

    public void setInventory(String inventory) {
        this.inventory = inventory;
    }

    public String getFreeShipping() {
        return freeShipping;
    }

    public void setFreeShipping(String freeShipping) {
        this.freeShipping = freeShipping;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String[] getSize() {
        return size;
    }

    public void setSize(String[] size) {
        this.size = size;
    }

    public String[] getColour() {
        return colour;
    }

    public void setColour(String[] colour) {
        this.colour = colour;
    }

    public String[] getCombo() {
        return combo;
    }

    public void setCombo(String[] combo) {
        this.combo = combo;
    }

    public String[] getSpecification() {
        return specification;
    }

    public void setSpecification(String[] specification) {
        this.specification = specification;
    }

    public String[] getImageSite() {
        return imageSite;
    }

    public void setImageSite(String[] imageSite) {
        this.imageSite = imageSite;
    }

    public String[] getTaste() {
        return taste;
    }

    public void setTaste(String[] taste) {
        this.taste = taste;
    }

    @Override
    public String toString() {
        return "ProductDetailsResult{" +
                "id=" + id +
                ", pid='" + pid + '\'' +
                ", productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
                ", sales='" + sales + '\'' +
                ", weight='" + weight + '\'' +
                ", inventory='" + inventory + '\'' +
                ", freeShipping='" + freeShipping + '\'' +
                ", video='" + video + '\'' +
                ", size=" + Arrays.toString(size) +
                ", colour=" + Arrays.toString(colour) +
                ", combo=" + Arrays.toString(combo) +
                ", specification=" + Arrays.toString(specification) +
                ", imageSite=" + Arrays.toString(imageSite) +
                ", taste=" + Arrays.toString(taste) +
                '}';
    }
}
