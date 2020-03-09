package cn.itcast.domain.commodity;

import java.io.Serializable;
//低价商品查询
public class ProductLowPrice implements Serializable {
    private int id;
    private String ProductImage;    //商品图片
    private String ProductSite;     //商品链接
    private String Price;       //低价价格

    public String getPrice() {
        return Price;
    }

    public void setPrice(String price) {
        Price = price;
    }

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
