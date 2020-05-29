package cn.itcast.domain.homepag;

import java.io.Serializable;
import java.util.List;

/**
 * 二级商品分类
 * @author Kite
 * @date 2020/5/14
 */
public class ProductSecondaryCategory implements Serializable {
    /**二级分类id**/
    private Integer product_secondary_id;
    /**二级分类内容**/
    private String secondary_content;
    /**三级商品目录**/
    private List<ProductFinalCategory>productFinalCategories;

    public Integer getProduct_secondary_id() {
        return product_secondary_id;
    }

    public void setProduct_secondary_id(Integer product_secondary_id) {
        this.product_secondary_id = product_secondary_id;
    }


    public String getSecondary_content() {
        return secondary_content;
    }

    public void setSecondary_content(String secondary_content) {
        this.secondary_content = secondary_content;
    }

    public List<ProductFinalCategory> getProductFinalCategories() {
        return productFinalCategories;
    }

    public void setProductFinalCategories(List<ProductFinalCategory> productFinalCategories) {
        this.productFinalCategories = productFinalCategories;
    }
}