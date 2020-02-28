package cn.itcast.domain;
//商品类
public class popular {
    private int id;
    private int uid;
    private String popularName; //商品名字
    private String popularIntroduce;    //商品介绍
    private Double discountPrice;     //折扣价格
    private Double popularPrice;   //商品价格
    private int popularInventory;   //商品库存
    private int salesVolume;             //商品销量
    private int integral;                //积分
    private int evaluateAmount;          //评价数量
    private String collect;                //是否收藏
    private String shoppingTrolley;        //是否加入购物车
    private String popularProducts;        //是否为热门商品
    private String productPicture;         //商品图片

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getPopularName() {
        return popularName;
    }

    public void setPopularName(String popularName) {
        this.popularName = popularName;
    }

    public String getPopularIntroduce() {
        return popularIntroduce;
    }

    public void setPopularIntroduce(String popularIntroduce) {
        this.popularIntroduce = popularIntroduce;
    }

    public Double getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(Double discountPrice) {
        this.discountPrice = discountPrice;
    }

    public Double getPopularPrice() {
        return popularPrice;
    }

    public void setPopularPrice(Double popularPrice) {
        this.popularPrice = popularPrice;
    }

    public int getPopularInventory() {
        return popularInventory;
    }

    public void setPopularInventory(int popularInventory) {
        this.popularInventory = popularInventory;
    }

    public int getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(int salesVolume) {
        this.salesVolume = salesVolume;
    }

    public int getIntegral() {
        return integral;
    }

    public void setIntegral(int integral) {
        this.integral = integral;
    }

    public int getEvaluateAmount() {
        return evaluateAmount;
    }

    public void setEvaluateAmount(int evaluateAmount) {
        this.evaluateAmount = evaluateAmount;
    }

    public String getCollect() {
        return collect;
    }

    public void setCollect(String collect) {
        this.collect = collect;
    }

    public String getShoppingTrolley() {
        return shoppingTrolley;
    }

    public void setShoppingTrolley(String shoppingTrolley) {
        this.shoppingTrolley = shoppingTrolley;
    }

    public String getPopularProducts() {
        return popularProducts;
    }

    public void setPopularProducts(String popularProducts) {
        this.popularProducts = popularProducts;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }
}
