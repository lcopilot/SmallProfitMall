package cn.itcast.domain.homepag;

import java.util.List;

/**
 * 返回的商品分类
 * @author Kite
 * @date 2020/5/15
 */
public class ProductCategory {
    /**一级目录名称**/
    private List<String>category_content;
    /**二级目录**/
    private List<List<ProductSecondaryCategory>> productSecondaryCategories;

    public List<String> getCategory_content() {
        return category_content;
    }

    public void setCategory_content(List<String> category_content) {
        this.category_content = category_content;
    }

    public List<List<ProductSecondaryCategory>> getProductSecondaryCategories() {
        return productSecondaryCategories;
    }

    public void setProductSecondaryCategories(List<List<ProductSecondaryCategory>> productSecondaryCategories) {
        this.productSecondaryCategories = productSecondaryCategories;
    }
}
