package cn.itcast.domain;

//为你推荐
public class Recommend {
    private int id;
    private String rid;
    private String ProductPicture;
    private String ProductName;
    private String ProductPrice;
    private String Favorite;
    private String shoppingTrolley;

    public String getShoppingTrolley() {
        return shoppingTrolley;
    }

    public void setShoppingTrolley(String shoppingTrolley) {
        this.shoppingTrolley = shoppingTrolley;
    }

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public String getFavorite() {
        return Favorite;
    }

    public void setFavorite(String favorite) {
        Favorite = favorite;
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
