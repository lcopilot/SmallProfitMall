package cn.itcast.domain.ProductDatails;

/**
 * 商品种类
 * @author Kite
 * @date 2020/5/24
 */
public class ProductKind {
    /**商品种类id**/
    private Integer kindId;
    /**商品种类**/
    private String productKind;

    public Integer getKindId() {
        return kindId;
    }

    public void setKindId(Integer kindId) {
        this.kindId = kindId;
    }

    public String getProductKind() {
        return productKind;
    }

    public void setProductKind(String productKind) {
        this.productKind = productKind;
    }
}
