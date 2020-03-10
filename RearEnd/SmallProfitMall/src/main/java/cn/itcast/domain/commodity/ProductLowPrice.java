package cn.itcast.domain.commodity;

import java.io.Serializable;
//低价商品查询
public class ProductLowPrice implements Serializable {
    private int ProductId;
    private String ImageSite;    //商品图片
    private String SalesPrice;       //低价价格


    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int productId) {
        ProductId = productId;
    }

    public String getImageSite() {
        return ImageSite;
    }

    public void setImageSite(String imageSite) {
        ImageSite = imageSite;
    }

    public String getSalesPrice() {
        return SalesPrice;
    }

    public void setSalesPrice(String salesPrice) {
        SalesPrice = salesPrice;
    }
}
