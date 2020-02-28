package cn.itcast.domain;

import java.io.Serializable;
//低价商品查询
public class ProductLowPrice implements Serializable {
    private int id;
    private String ProductImage;    //商品图片
    private String ProductSite;     //商品链接

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductImage() {
        return ProductImage;
    }

    public void setProductImage(String productImage) {
        ProductImage = productImage;
    }

    public String getProductSite() {
        return ProductSite;
    }

    public void setProductSite(String productSite) {
        ProductSite = productSite;
    }
}
