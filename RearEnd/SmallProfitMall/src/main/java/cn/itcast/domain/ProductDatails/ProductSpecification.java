package cn.itcast.domain.ProductDatails;

/**
 * 商品规格
 * @author Kite
 * @date 2020/5/24
 */
public class ProductSpecification {
    /**商品规格id**/
    private Integer specificationId;
    /**商品规格**/
    private String specification;

    public Integer getSpecificationId() {
        return specificationId;
    }

    public void setSpecificationId(Integer specificationId) {
        this.specificationId = specificationId;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }
}
