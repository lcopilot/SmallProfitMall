package cn.itcast.domain.ProductDatails;

/**
 * 商品尺寸实体类
 * @author Kite
 * @date 2020/5/24
 */
public class ProductSize {
    /**尺码id**/
    private Integer sizeId;
    /**商品尺寸**/
    private String productSize;

    public String getProductSize() {
        return productSize;
    }

    public void setProductSize(String productSize) {
        this.productSize = productSize;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }
}
