package cn.xgtd.domain.product;

/**
 * @author Kite
 * @date 2020/6/15
 */
public class ProductImage {
    /**商品id**/
    private Integer productId;
    /**图片地址**/
    private String imageSite;
    /**是否是主图**/
    private Boolean sign;

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
