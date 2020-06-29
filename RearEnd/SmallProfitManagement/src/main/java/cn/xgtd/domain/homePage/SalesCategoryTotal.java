package cn.xgtd.domain.homePage;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/30
 */
public class SalesCategoryTotal {
    /**所有分类总计**/
    private Double total;
    /**种类销售集合**/
    private List<SalesCategory> salesCategories;

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public List<SalesCategory> getSalesCategories() {
        return salesCategories;
    }

    public void setSalesCategories(List<SalesCategory> salesCategories) {
        this.salesCategories = salesCategories;
    }
}
