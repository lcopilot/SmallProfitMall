package cn.itcast.domain.ProductDatails;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/**
 * 商品返回的详细数据
 * @author kity
 */
public class ProductDetailsResult implements Serializable {
    private int id;
    /**商品id**/
    private String pid;
    /**商品名字**/
    private String productName;
    /**商品价格**/
    private Double productPrice;
    /**商品销售量**/
    private String sales;
    /**重量**/
    private String weight;
    //库存**/
    private String inventory;
    /**是否包邮**/
    private String freeShipping;
    /**视频**/
    private String video;
    /**尺寸(返回前端）**/
    private List<String> size;
    /**颜色(返回前端）**/
    private List<String> colour;
    /**套餐(返回前端）**/
    private List<String> combo;
    /**规格(返回前端）**/
    private List<String> specification;
    /**图片（返回前端）**/
    private List<String> imageSite;
    /**口味(返回前端）**/
    private List<String> taste;
    /**商品种类**/
    private List<String> kind;
    /**商品版本**/
    private List<String> version;
    /**库存**/
    private int inventorys;
    /**商品点击量**/
    private int clicks;
    /**商品浏览量**/
    private Integer productPageviews;
    /**商品价格**/
    private double ProductPrice;
    /**促销价格**/
    private double SalesPrice;
    /**秒杀价格**/
    private double SpikePrice;
    /**商品销量**/
    private double ProductSales;
    /**商品库存**/
    private double ProductInventory;


    public Integer getProductPageviews() {
        return productPageviews;
    }

    public void setProductPageviews(Integer productPageviews) {
        this.productPageviews = productPageviews;
    }

    public int getClicks() {
        return clicks;
    }

    public void setClicks(int clicks) {
        this.clicks = clicks;
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

    public List<String> getSize() {
        return size;
    }

    public void setSize(List<String> size) {
        this.size = size;
    }

    public List<String> getColour() {
        return colour;
    }

    public void setColour(List<String> colour) {
        this.colour = colour;
    }

    public List<String> getCombo() {
        return combo;
    }

    public void setCombo(List<String> combo) {
        this.combo = combo;
    }

    public List<String> getSpecification() {
        return specification;
    }

    public void setSpecification(List<String> specification) {
        this.specification = specification;
    }

    public List<String> getImageSite() {
        return imageSite;
    }

    public void setImageSite(List<String> imageSite) {
        this.imageSite = imageSite;
    }

    public List<String> getTaste() {
        return taste;
    }

    public void setTaste(List<String> taste) {
        this.taste = taste;
    }

    public List<String> getKind() {
        return kind;
    }

    public void setKind(List<String> kind) {
        this.kind = kind;
    }

    public List<String> getVersion() {
        return version;
    }

    public void setVersion(List<String> version) {
        this.version = version;
    }

    public int getInventorys() {
        return inventorys;
    }

    public void setInventorys(int inventorys) {
        this.inventorys = inventorys;
    }
}
