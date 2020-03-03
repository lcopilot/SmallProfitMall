package cn.itcast.domain;

import java.io.Serializable;

//产品详细实体类
public class ProductDetails implements Serializable {
    private int id;
    private String pid;
    private String productName;//商品名字
    private Double productPrice;//商品价格
    private String imageSite;   //图片地址
    private Double sales;          //商品销售量
    private String weight;          //重量
    private String size;           //尺寸封装
    private Double inventory;       //库存
    private String colour;         //数据库获取的颜色
    private String combo;           //套餐数据库获取
    private String freeShipping;    //是否包邮
    private String video;           //视频
    private String specification;   //规格
    private String taste;           //口味

    public int getId() {
        return id;
    }

    public String getPid() {
        return pid;
    }

    public String getProductName() {
        return productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public String getImageSite() {
        return imageSite;
    }

    public Double getSales() {
        return sales;
    }

    public String getWeight() {
        return weight;
    }

    public String getSize() {
        return size;
    }

    public Double getInventory() {
        return inventory;
    }

    public String getColour() {
        return colour;
    }

    public String getCombo() {
        return combo;
    }

    public String getFreeShipping() {
        return freeShipping;
    }

    public String getVideo() {
        return video;
    }

    public String getSpecification() {
        return specification;
    }

    public String getTaste() {
        return taste;
    }
}
