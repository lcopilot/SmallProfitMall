package cn.itcast.domain.shoppingCar;

/**
 * 商品库存不足返回对象
 * @author Kite
 * @date 2020/5/30
 */
public class ProductInventoryType {
    /**商品id**/
    private Integer productId;
    /**商品名字**/
    private String productName;
    /**商品库存**/
    private Integer productInventory;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getProductInventory() {
        return productInventory;
    }

    public void setProductInventory(Integer productInventory) {
        this.productInventory = productInventory;
    }
}
