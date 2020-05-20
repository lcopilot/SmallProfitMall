package cn.itcast.domain.commodity;

import java.io.Serializable;
//低价商品查询
public class ProductLowPrice implements Serializable {
    private int ProductId;
    //商品图片
    private String ImageSite;
    //低价价格
    private String SalesPrice;


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
