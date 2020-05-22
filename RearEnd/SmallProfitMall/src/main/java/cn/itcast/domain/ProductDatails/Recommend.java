package cn.itcast.domain.ProductDatails;

import lombok.Data;

/**
 * 商品右侧推荐
 * @author Kite
 * @date 2020/5/21
 */
public class Recommend {
    /**商品id**/
    private Integer productId;
    /**商品图片**/
    private String ImageSite;


    public String getImageSite() {
        return ImageSite;
    }

    public void setImageSite(String imageSite) {
        ImageSite = imageSite;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }


}
