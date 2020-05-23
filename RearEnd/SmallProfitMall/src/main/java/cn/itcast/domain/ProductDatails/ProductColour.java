package cn.itcast.domain.ProductDatails;

/**
 * 商品颜色实体类
 * @author Kite
 * @date 2020/5/24
 */
public class ProductColour {
    /**商品颜色id**/
    private Integer colourId;
    /**商品颜色**/
    private String productColour;

    public Integer getColourId() {
        return colourId;
    }

    public void setColourId(Integer colourId) {
        this.colourId = colourId;
    }

    public String getProductColour() {
        return productColour;
    }

    public void setProductColour(String productColour) {
        this.productColour = productColour;
    }
}
