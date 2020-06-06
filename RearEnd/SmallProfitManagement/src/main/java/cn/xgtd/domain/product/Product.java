package cn.xgtd.domain.product;

import javax.xml.crypto.Data;

/**
 * 商品实体类
 * @author Kite
 * @date 2020/6/6
 */
public class Product {
    /**商品id**/
    private Integer productId;
    /**商品名称**/
    private String productName;
    /**商品分类**/
    private String productClassify;
    /**商品价格**/
    private Double productPrice;

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

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }
}
