package cn.itcast.domain.commodity;

import java.io.Serializable;
import java.util.Date;

//秒杀实体
public class Seckill implements Serializable {
    private int id;
    private Double BuyingPrice;        //原价
    private Double seckillPrice;         //秒杀价
    private String productName;       //商品名字
    private String productPicture;      //商品图片
    private String productSite;        //商品链接
    private String productIntroduce;     //商品介绍

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Double getBuyingPrice() {
        return BuyingPrice;
    }

    public void setBuyingPrice(Double buyingPrice) {
        BuyingPrice = buyingPrice;
    }

    public Double getSeckillPrice() {
        return seckillPrice;
    }

    public void setSeckillPrice(Double seckillPrice) {
        this.seckillPrice = seckillPrice;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }

    public String getProductSite() {
        return productSite;
    }

    public void setProductSite(String productSite) {
        this.productSite = productSite;
    }

    public String getProductIntroduce() {
        return productIntroduce;
    }

    public void setProductIntroduce(String productIntroduce) {
        this.productIntroduce = productIntroduce;
    }

}
