package cn.itcast.domain;

import java.io.Serializable;

//为你推荐
public class Recommend implements Serializable {
    private int id;
    private String rid;
    private String ProductPicture;
    private String ProductName;
    private String ProductPrice;
    private int Favorite;
    private int shoppingTrolley;
    private int hot;

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductPicture() {
        return ProductPicture;
    }

    public void setProductPicture(String productPicture) {
        ProductPicture = productPicture;
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

}
