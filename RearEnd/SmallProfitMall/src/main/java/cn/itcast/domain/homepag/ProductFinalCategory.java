package cn.itcast.domain.homepag;

import java.io.Serializable;

/**
 * 三级商品分类
 * @author Kite
 * @date 2020/5/14
 */
public class ProductFinalCategory implements Serializable {
    /**三级商品分类id**/
    private Integer product_final_id;
    /**三级商品分类内容**/
    private String final_content;

    public Integer getProduct_final_id() {
        return product_final_id;
    }

    public void setProduct_final_id(Integer product_final_id) {
        this.product_final_id = product_final_id;
    }


    public String getFinal_content() {
        return final_content;
    }

    public void setFinal_content(String final_content) {
        this.final_content = final_content;
    }
}
