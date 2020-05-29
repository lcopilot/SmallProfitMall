package cn.itcast.domain.ProductDatails;

import java.io.Serializable;

/**
 * 商品套餐
 * @author Kite
 * @date 2020/5/24
 */
public class ProductCombo implements Serializable {
    /**商品套餐id**/
    private Integer comboId;
    /**商品套餐**/
    private String productCombo;

    public Integer getComboId() {
        return comboId;
    }

    public void setComboId(Integer comboId) {
        this.comboId = comboId;
    }

    public String getProductCombo() {
        return productCombo;
    }

    public void setProductCombo(String productCombo) {
        this.productCombo = productCombo;
    }
}
