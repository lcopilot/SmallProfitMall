package cn.itcast.domain.searchProduct;

/**
 * @author Kite
 * @date 2020/5/16
 */
public class SearchProduct {
    /**商品id**/
    private String productId;
    /**商品图片**/
    private String imageSite;
    /**商品名字**/
    private String productName;
    /**商品价格**/
    private String productPrice;
    /**商品销量**/
    private Integer productSales;
    /**商品浏览量**/
    private Integer productPageviews;
    /**是否收藏**/
    private Integer favorite;
    /**是否是热销**/
    private Integer hot;

    public Integer getFavorite() {
        return favorite;
    }

    public void setFavorite(Integer favorite) {
        this.favorite = favorite;
    }

    public Integer getHot() {
        return hot;
    }

    public void setHot(Integer hot) {
        this.hot = hot;
    }

    public Integer getProductSales() {
        return productSales;
    }

    public void setProductSales(Integer productSales) {
        this.productSales = productSales;
    }

    public Integer getProbuctPageviews() {
        return productPageviews;
    }

    public void setProbuctPageviews(Integer probuctPageviews) {
        this.productPageviews = probuctPageviews;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getImageSite() {
        return imageSite;
    }

    public void setImageSite(String imageSite) {
        this.imageSite = imageSite;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(String productPrice) {
        this.productPrice = productPrice;
    }
}
