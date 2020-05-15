package cn.itcast.domain.homepag;

import java.util.List;

/**
 * @author Kite
 * @date 2020/5/15
 */
public class ProductPrimaryCategoryList {

    /**同一级目录一级目录集合**/
    List<ProductPrimaryCategory> productPrimaryCategories;

    public List<ProductPrimaryCategory> getProductPrimaryCategories() {
        return productPrimaryCategories;
    }

    public void setProductPrimaryCategories(List<ProductPrimaryCategory> productPrimaryCategories) {
        this.productPrimaryCategories = productPrimaryCategories;
    }
}
