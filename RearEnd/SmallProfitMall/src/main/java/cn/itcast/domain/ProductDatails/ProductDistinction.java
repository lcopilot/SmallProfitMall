package cn.itcast.domain.ProductDatails;

/**
 * 商品不同配置不库存销量
 * @author Kite
 * @date 2020/5/24
 */
public class ProductDistinction {
    private Integer distinctionId;
    /**商品id**/
    private Integer productId;
    /**商品尺寸id**/
    private Integer sizeId;
    /**商品颜色id**/
    private Integer colourId;
    /**商品套餐id**/
    private Integer comboId;
    /**规格id**/
    private Integer specificationId;
    /**商品口味id**/
    private Integer tasteId;
    /**商品种类id**/
    private Integer kindId;
    /**商品版本id**/
    private Integer versionId;
    /**商品价格**/
    private Double productPrice;
    /**商品库存**/
    private Double ProductInventory;
    /**商品字符串库存**/
    private String ProductInventorys;
    /**商品销量**/
    private Double ProductSales;

    public String getProductInventorys() {
        return ProductInventorys;
    }

    public void setProductInventorys(String productInventorys) {
        ProductInventorys = productInventorys;
    }

    public Integer getDistinctionId() {
        return distinctionId;
    }

    public void setDistinctionId(Integer distinctionId) {
        this.distinctionId = distinctionId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public Integer getColourId() {
        return colourId;
    }

    public void setColourId(Integer colourId) {
        this.colourId = colourId;
    }

    public Integer getComboId() {
        return comboId;
    }

    public void setComboId(Integer comboId) {
        this.comboId = comboId;
    }

    public Integer getSpecificationId() {
        return specificationId;
    }

    public void setSpecificationId(Integer specificationId) {
        this.specificationId = specificationId;
    }

    public Integer getTasteId() {
        return tasteId;
    }

    public void setTasteId(Integer tasteId) {
        this.tasteId = tasteId;
    }

    public Integer getKindId() {
        return kindId;
    }

    public void setKindId(Integer kindId) {
        this.kindId = kindId;
    }

    public Integer getVersionId() {
        return versionId;
    }

    public void setVersionId(Integer versionId) {
        this.versionId = versionId;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Double getProductInventory() {
        return ProductInventory;
    }

    public void setProductInventory(Double productInventory) {
        ProductInventory = productInventory;
    }

    public Double getProductSales() {
        return ProductSales;
    }

    public void setProductSales(Double productSales) {
        ProductSales = productSales;
    }
}
