package cn.xgtd.domain.homePage;

/**
 * 分类销售额
 * @author Kite
 * @date 2020/6/29
 */
public class SalesCategory {
    /**类型id**/
    private Integer productPrimaryId;
    /**分类名称**/
    private String categoryContent;
    /**销售总额**/
    private Double salesTotal;

    public Integer getProductPrimaryId() {
        return productPrimaryId;
    }

    public void setProductPrimaryId(Integer productPrimaryId) {
        this.productPrimaryId = productPrimaryId;
    }

    public String getCategoryContent() {
        return categoryContent;
    }

    public void setCategoryContent(String categoryContent) {
        this.categoryContent = categoryContent;
    }

    public Double getSalesTotal() {
        return salesTotal;
    }

    public void setSalesTotal(Double salesTotal) {
        this.salesTotal = salesTotal;
    }
}
