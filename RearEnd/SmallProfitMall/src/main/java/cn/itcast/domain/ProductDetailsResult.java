package cn.itcast.domain;

import cn.itcast.domain.ProductDatails.Size;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import java.io.Serializable;
import java.util.List;

@Component("productDetailsResult")
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

    public int getId() {
        return id;
    }

    public String getPid() {
        return pid;
    }

    public String getProductName() {
        return productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public String getSales() {
        return sales;
    }

    public String getWeight() {
        return weight;
    }

    public String getInventory() {
        return inventory;
    }

    public String getFreeShipping() {
        return freeShipping;
    }

    public String getVideo() {
        return video;
    }

    public String[] getSize() {
        return size;
    }

    public String[] getColour() {
        return colour;
    }

    public String[] getCombo() {
        return combo;
    }

    public String[] getSpecification() {
        return specification;
    }

    public String[] getImageSite() {
        return imageSite;
    }

    public String[] getTaste() {
        return taste;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setTaste(String[] taste) {
        this.taste = taste;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public void setSales(String sales) {
        this.sales = sales;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public void setInventory(String inventory) {
        this.inventory = inventory;
    }

    public void setFreeShipping(String freeShipping) {
        this.freeShipping = freeShipping;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public void setSize(String[] size) {
        this.size = size;
    }

    public void setColour(String[] colour) {
        this.colour = colour;
    }

    public void setCombo(String[] combo) {
        this.combo = combo;
    }

    public void setSpecification(String[] specification) {
        this.specification = specification;
    }

    public void setImageSite(String[] imageSite) {
        this.imageSite = imageSite;
    }
}
