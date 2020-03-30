package cn.itcast.domain.ProductDatails;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
@Component
public class ProductBasis implements Serializable {
    private int id;
    private String ProductId;
    private String ProductName;         //商品名字
    private String ProductWeight;           //重量
    private String freeShipping;             //是否包邮
    private String ProductVideo;           //视频
    private String ProductCategory;        //商品种类
    private double ProductPrice;            //商品价格
    private double SalesPrice;              //促销价格
    private double SpikePrice;              //秒杀价格
    private double ProductSales;            //商品销量
    private double ProductInventory;        //商品库存
    private List<String> imageSite;

    public List<String> getImageSite() {
        return imageSite;
    }

    public void setImageSite(List<String> imageSite) {
        this.imageSite = imageSite;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductId() {
        return ProductId;
    }

    public void setProductId(String productId) {
        ProductId = productId;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public String getProductWeight() {
        return ProductWeight;
    }

    public void setProductWeight(String productWeight) {
        ProductWeight = productWeight;
    }

    public String getFreeShipping() {
        return freeShipping;
    }

    public void setFreeShipping(String freeShipping) {
        this.freeShipping = freeShipping;
    }

    public String getProductVideo() {
        return ProductVideo;
    }

    public void setProductVideo(String productVideo) {
        ProductVideo = productVideo;
    }

    public String getProductCategory() {
        return ProductCategory;
    }

    public void setProductCategory(String productCategory) {
        ProductCategory = productCategory;
    }

    public double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(double productPrice) {
        ProductPrice = productPrice;
    }

    public double getSalesPrice() {
        return SalesPrice;
    }

    public void setSalesPrice(double salesPrice) {
        SalesPrice = salesPrice;
    }

    public double getSpikePrice() {
        return SpikePrice;
    }

    public void setSpikePrice(double spikePrice) {
        SpikePrice = spikePrice;
    }

    public double getProductSales() {
        return ProductSales;
    }

    public void setProductSales(double productSales) {
        ProductSales = productSales;
    }

    public double getProductInventory() {
        return ProductInventory;
    }

    public void setProductInventory(double productInventory) {
        ProductInventory = productInventory;
    }
}
