package cn.xgtd.domain.product;

import java.io.Serializable;

/**
 * 图片
 * @author Kite
 * @date 2020/6/15
 */
public class ProductImage implements Serializable {
    /**图片id**/
    private Integer id;
    /**商品id**/
    private Integer productId;
    /**图片地址**/
    private String imageSite;
    /**是否是主图**/
    private Boolean sign;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getImageSite() {
        return imageSite;
    }

    public void setImageSite(String imageSite) {
        this.imageSite = imageSite;
    }

    public Boolean getSign() {
        return sign;
    }

    public void setSign(Boolean sign) {
        this.sign = sign;
    }
}
