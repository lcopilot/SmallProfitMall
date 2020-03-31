package cn.itcast.domain.ProductDatails;

import java.io.Serializable;
import java.util.List;

/**
 * 商品属性是否存在表
 * @author Kite
 * @date 2020/3/31
 */
public class ProductAttributes implements Serializable {
    //商品id
    private Integer productId;
    //尺寸
    private Integer size;
    //颜色
    private Integer colour;
    //套餐
    private Integer combo;
    //规格
    private Integer specification;
    //口味
    private Integer taste;
    //种类
    private Integer kind;
    //版本
    private Integer version;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getColour() {
        return colour;
    }

    public void setColour(Integer colour) {
        this.colour = colour;
    }

    public Integer getCombo() {
        return combo;
    }

    public void setCombo(Integer combo) {
        this.combo = combo;
    }

    public Integer getSpecification() {
        return specification;
    }

    public void setSpecification(Integer specification) {
        this.specification = specification;
    }

    public Integer getTaste() {
        return taste;
    }

    public void setTaste(Integer taste) {
        this.taste = taste;
    }

    public Integer getKind() {
        return kind;
    }

    public void setKind(Integer kind) {
        this.kind = kind;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    @Override
    public String toString() {
        return "ProductAttributes{" +
                "productId=" + productId +
                ", size=" + size +
                ", colour=" + colour +
                ", combo=" + combo +
                ", specification=" + specification +
                ", taste=" + taste +
                ", kind=" + kind +
                ", version=" + version +
                '}';
    }
}
