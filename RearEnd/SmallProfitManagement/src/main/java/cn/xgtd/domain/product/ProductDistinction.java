package cn.xgtd.domain.product;

import java.io.Serializable;

/**
 * 商品不同配置不库存销量
 * @author Kite
 * @date 2020/5/24
 */
public class ProductDistinction implements Serializable {
    private Integer distinctionId;
    /**商品id**/
    private Integer productId;
    /**商品尺寸id**/
    private Integer sizeId;
    /**尺寸内容**/
    private String sizeContent;
    /**商品颜色id**/
    private Integer colourId;
    /**颜色内容**/
    private String colourContent;
    /**商品套餐id**/
    private Integer comboId;
    /**套餐内容**/
    private String comboContent;
    /**规格id**/
    private Integer specificationId;
    /**规格内容**/
    private String specificationContent;
    /**商品口味id**/
    private Integer tasteId;
    /**口味内容**/
    private String tasteContent;
    /**商品种类id**/
    private Integer kindId;
    /**种类内容**/
    private String kindContent;
    /**商品版本id**/
    private Integer versionId;
    /**版本内容**/
    private String versionContent;
    /**商品价格**/
    private Double productPrice;
    /**商品库存**/
    private Double ProductInventory;
    /**商品销量**/
    private Double ProductSales;

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

    public String getSizeContent() {
        return sizeContent;
    }

    public void setSizeContent(String sizeContent) {
        this.sizeContent = sizeContent;
    }

    public Integer getColourId() {
        return colourId;
    }

    public void setColourId(Integer colourId) {
        this.colourId = colourId;
    }

    public String getColourContent() {
        return colourContent;
    }

    public void setColourContent(String colourContent) {
        this.colourContent = colourContent;
    }

    public Integer getComboId() {
        return comboId;
    }

    public void setComboId(Integer comboId) {
        this.comboId = comboId;
    }

    public String getComboContent() {
        return comboContent;
    }

    public void setComboContent(String comboContent) {
        this.comboContent = comboContent;
    }

    public Integer getSpecificationId() {
        return specificationId;
    }

    public void setSpecificationId(Integer specificationId) {
        this.specificationId = specificationId;
    }

    public String getSpecificationContent() {
        return specificationContent;
    }

    public void setSpecificationContent(String specificationContent) {
        this.specificationContent = specificationContent;
    }

    public Integer getTasteId() {
        return tasteId;
    }

    public void setTasteId(Integer tasteId) {
        this.tasteId = tasteId;
    }

    public String getTasteContent() {
        return tasteContent;
    }

    public void setTasteContent(String tasteContent) {
        this.tasteContent = tasteContent;
    }

    public Integer getKindId() {
        return kindId;
    }

    public void setKindId(Integer kindId) {
        this.kindId = kindId;
    }

    public String getKindContent() {
        return kindContent;
    }

    public void setKindContent(String kindContent) {
        this.kindContent = kindContent;
    }

    public Integer getVersionId() {
        return versionId;
    }

    public void setVersionId(Integer versionId) {
        this.versionId = versionId;
    }

    public String getVersionContent() {
        return versionContent;
    }

    public void setVersionContent(String versionContent) {
        this.versionContent = versionContent;
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
