package cn.itcast.domain.ProductDatails;

/**
 * 商品口味
 * @author Kite
 * @date 2020/5/24
 */
public class ProductTaste {
    /**口味id**/
    private Integer tasteId;
    /**商品口味**/
    private String productTaste;

    public Integer getTasteId() {
        return tasteId;
    }

    public void setTasteId(Integer tasteId) {
        this.tasteId = tasteId;
    }

    public String getProductTaste() {
        return productTaste;
    }

    public void setProductTaste(String productTaste) {
        this.productTaste = productTaste;
    }
}
