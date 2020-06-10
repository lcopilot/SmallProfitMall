package cn.xgtd.domain.product;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/6/10
 */
public class ProductClassify implements Serializable {
    /**商品一级分类id**/
    private Integer productPrimaryId;
    /**商品一级分类**/
    private String primaryContent;
    /**商品二级分类id**/
    private Integer productSecondaryId;
    /**商品二级分类**/
    private String secondaryContent;
    /**商品三级级分类id**/
    private Integer productFinalId;
    /**商品三级分类**/
    private String finalContent;


    public Integer getProductPrimaryId() {
        return productPrimaryId;
    }

    public void setProductPrimaryId(Integer productPrimaryId) {
        this.productPrimaryId = productPrimaryId;
    }

    public String getPrimaryContent() {
        return primaryContent;
    }

    public void setPrimaryContent(String primaryContent) {
        this.primaryContent = primaryContent;
    }

    public Integer getProductSecondaryId() {
        return productSecondaryId;
    }

    public void setProductSecondaryId(Integer productSecondaryId) {
        this.productSecondaryId = productSecondaryId;
    }

    public String getSecondaryContent() {
        return secondaryContent;
    }

    public void setSecondaryContent(String secondaryContent) {
        this.secondaryContent = secondaryContent;
    }

    public Integer getProductFinalId() {
        return productFinalId;
    }

    public void setProductFinalId(Integer productFinalId) {
        this.productFinalId = productFinalId;
    }

    public String getFinalContent() {
        return finalContent;
    }

    public void setFinalContent(String finalContent) {
        this.finalContent = finalContent;
    }
}
