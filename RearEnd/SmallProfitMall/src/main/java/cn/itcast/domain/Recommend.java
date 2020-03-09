package cn.itcast.domain;

import java.io.Serializable;

//为你推荐
public class Recommend implements Serializable {
    private int id;
    private String ProductId;
    private String ImageSite;
    private String ProductName;
    private String ProductPrice;
    private int Favorite;
    private int shoppingTrolley;
    private int hot;

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public int getFavorite() {
        return Favorite;
    }

    public void setFavorite(int favorite) {
        Favorite = favorite;
    }

    public int getShoppingTrolley() {
        return shoppingTrolley;
    }

    public void setShoppingTrolley(int shoppingTrolley) {
        this.shoppingTrolley = shoppingTrolley;
    }

    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }
}
