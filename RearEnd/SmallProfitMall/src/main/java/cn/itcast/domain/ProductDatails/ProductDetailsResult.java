package cn.itcast.domain.ProductDatails;

import java.io.Serializable;
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
    /**库存**/
    private String inventory;
    /**是否包邮**/
    private String freeShipping;
    /**视频**/
    private String video;
    /**尺寸(返回前端）**/
    private List<ProductContext> size;
    /**颜色(返回前端）**/
    private List<ProductContext> colour;
    /**套餐(返回前端）**/
    private List<ProductContext> combo;
    /**规格(返回前端）**/
    private List<ProductContext> specification;
    /**图片（返回前端）**/
    private List<String> imageSite;
    /**口味(返回前端）**/
    private List<ProductContext> taste;
    /**商品种类**/
    private List<ProductContext> kind;
    /**商品版本**/
    private List<ProductContext> version;
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

    /**商品介绍**/
    private String productDescription;

    /**商品售后**/
    private String productAfterSale;

    /**商品参数**/
    private String productParameter;

    /**商品不同属性**/
    private List<ProductDistinction> productDistinctions;

    /**商品属性**/
    private List<ProductContext> productContexts;

    public List<ProductContext> getProductContexts() {
        return productContexts;
    }

    public void setProductContexts(List<ProductContext> productContexts) {
        this.productContexts = productContexts;
    }

    public List<ProductDistinction> getProductDistinctions() {
        return productDistinctions;
    }

    public void setProductDistinctions(List<ProductDistinction> productDistinctions) {
        this.productDistinctions = productDistinctions;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductAfterSale() {
        return productAfterSale;
    }

    public void setProductAfterSale(String productAfterSale) {
        this.productAfterSale = productAfterSale;
    }

    public String getProductParameter() {
        return productParameter;
    }

    public void setProductParameter(String productParameter) {
        this.productParameter = productParameter;
    }

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

    public List<ProductContext> getSize() {
        return size;
    }

    public void setSize(List<ProductContext> size) {
        this.size = size;
    }

    public List<ProductContext> getColour() {
        return colour;
    }

    public void setColour(List<ProductContext> colour) {
        this.colour = colour;
    }

    public List<ProductContext> getCombo() {
        return combo;
    }

    public void setCombo(List<ProductContext> combo) {
        this.combo = combo;
    }

    public List<ProductContext> getSpecification() {
        return specification;
    }

    public void setSpecification(List<ProductContext> specification) {
        this.specification = specification;
    }

    public List<String> getImageSite() {
        return imageSite;
    }

    public void setImageSite(List<String> imageSite) {
        this.imageSite = imageSite;
    }

    public List<ProductContext> getTaste() {
        return taste;
    }

    public void setTaste(List<ProductContext> taste) {
        this.taste = taste;
    }

    public List<ProductContext> getKind() {
        return kind;
    }

    public void setKind(List<ProductContext> kind) {
        this.kind = kind;
    }

    public List<ProductContext> getVersion() {
        return version;
    }

    public void setVersion(List<ProductContext> version) {
        this.version = version;
    }

    public int getInventorys() {
        return inventorys;
    }

    public void setInventorys(int inventorys) {
        this.inventorys = inventorys;
    }
}
