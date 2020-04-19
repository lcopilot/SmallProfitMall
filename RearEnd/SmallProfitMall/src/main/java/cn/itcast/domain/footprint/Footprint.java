package cn.itcast.domain.footprint;

import javax.xml.crypto.Data;
import java.util.Date;

//足迹
public class Footprint {
    //足迹id
    private Integer footprintId;

    //商品id
    private int productId;

    //商品名称
    private String ProductName;

    //商品价格
    private  Double ProductPrice;

    //商品图片
    private String ImageSite;

    //用户id
    private String userId;

    //浏览时间
    private Date footprintTime;

    public int getFootprintId() {
        return footprintId;
    }

    public void setFootprintId(int footprintId) {
        this.footprintId = footprintId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getImageSite() {
        return ImageSite;
    }

    public void setImageSite(String imageSite) {
        ImageSite = imageSite;
    }

    public Date getFootprintTime() {
        return footprintTime;
    }

    public void setFootprintTime(Date footprintTime) {
        this.footprintTime = footprintTime;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public Double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(Double productPrice) {
        ProductPrice = productPrice;
    }
}


