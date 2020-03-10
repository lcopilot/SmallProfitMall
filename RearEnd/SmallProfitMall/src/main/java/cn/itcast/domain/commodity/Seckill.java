package cn.itcast.domain.commodity;

import java.io.Serializable;
import java.util.Date;

//秒杀实体
public class Seckill implements Serializable {
    private int SeckillId;
    private Double ProductPrice;        //原价
    private Double SpikePrice;         //秒杀价
    private String ProductName;       //商品名字
    private String ImageSite;      //商品图片


    public Double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(Double productPrice) {
        ProductPrice = productPrice;
    }

    public Double getSpikePrice() {
        return SpikePrice;
    }

    public void setSpikePrice(Double spikePrice) {
        SpikePrice = spikePrice;
    }

    public int getSeckillId() {
        return SeckillId;
    }

    public void setSeckillId(int seckillId) {
        SeckillId = seckillId;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public String getImageSite() {
        return ImageSite;
    }

    public void setImageSite(String imageSite) {
        ImageSite = imageSite;
    }
}
