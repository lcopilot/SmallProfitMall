package cn.itcast.domain.homepag;

import java.io.Serializable;
import java.util.List;

/**
 * 一级商品分类
 * @author Kite
 * @date 2020/5/14
 */
public class ProductPrimaryCategory implements Serializable {
    /**一级分类id**/
    private Integer product_primary_id;
    /**一级分类小标题id**/
    private Integer product_content_id;
    /**分类内容**/
    private String category_content;
    /**分类换行标志位**/
    private Boolean sign;
    /**二级商品目录**/
    private List<ProductSecondaryCategory> productSecondaryCategories;

    public Boolean getSign() {
        return sign;
    }

    public void setSign(Boolean sign) {
        this.sign = sign;
    }

    public Integer getProduct_primary_id() {
        return product_primary_id;
    }

    public void setProduct_primary_id(Integer product_primary_id) {
        this.product_primary_id = product_primary_id;
    }

    public Integer getProduct_content_id() {
        return product_content_id;
    }

    public void setProduct_content_id(Integer product_content_id) {
        this.product_content_id = product_content_id;
    }

    public String getCategory_content() {
        return category_content;
    }

    public void setCategory_content(String category_content) {
        this.category_content = category_content;
    }

    public List<ProductSecondaryCategory> getProductSecondaryCategories() {
        return productSecondaryCategories;
    }

    public void setProductSecondaryCategories(List<ProductSecondaryCategory> productSecondaryCategories) {
        this.productSecondaryCategories = productSecondaryCategories;
    }
}
