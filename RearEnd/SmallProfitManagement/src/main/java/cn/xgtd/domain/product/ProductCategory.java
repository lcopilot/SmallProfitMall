package cn.xgtd.domain.product;

import java.io.Serializable;
import java.util.List;

/**
 * 商品分类
 * @author Kite
 * @date 2020/6/10
 */
public class ProductCategory implements Serializable {
    /**种类id**/
    private Integer categoryId;
    /**种类内容**/
    private String categoryContent;
    /**下级目录**/
    private List<ProductCategory> children;

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryContent() {
        return categoryContent;
    }

    public void setCategoryContent(String categoryContent) {
        this.categoryContent = categoryContent;
    }

    public List<ProductCategory> getChildren() {
        return children;
    }

    public void setChildren(List<ProductCategory> children) {
        this.children = children;
    }
}
