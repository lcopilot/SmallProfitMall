package cn.xgtd.domain.product;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/6/9
 */
public class BasicProduct implements Serializable {
    /**商品Id**/
    private Integer productId;
    /**商品名称**/
    private String productName;
    /**商品分类**/
    private String productClassify;
    /**商品分类Id**/
    private String classifyId;
    /**商品价格**/
    private Double productPrice;
    /**商品图片预览**/
    private String productPicture;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductClassify() {
        return productClassify;
    }

    public void setProductClassify(String productClassify) {
        this.productClassify = productClassify;
    }

    public String getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(String classifyId) {
        this.classifyId = classifyId;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }
}
