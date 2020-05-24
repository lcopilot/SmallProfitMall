package cn.itcast.domain.commodity;

import java.io.Serializable;

/**
 * 为你推 荐
 * @author kity
 */
public class Recommend implements Serializable {
    /**推荐id**/
    private Integer id;
    /**商品id**/
    private String ProductId;
    /**商品图片**/
    private String ImageSite;
    /**商品名字**/
    private String ProductName;
    /**商品价格**/
    private String ProductPrice;
    /**商品浏览量**/
    private Integer productPageviews;
    /**是否收藏**/
    private Integer Favorite;

    /**是否是热销**/
    private int hot;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductId() {
        return ProductId;
    }

    public void setProductId(String productId) {
        ProductId = productId;
    }

    public String getImageSite() {
        return ImageSite;
    }

    public void setImageSite(String imageSite) {
        ImageSite = imageSite;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public String getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(String productPrice) {
        ProductPrice = productPrice;
    }

    public Integer getProductPageviews() {
        return productPageviews;
    }

    public void setProductPageviews(Integer productPageviews) {
        this.productPageviews = productPageviews;
    }

    public int getFavorite() {
        return Favorite;
    }

    public void setFavorite(int favorite) {
        Favorite = favorite;
    }

    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }
}
