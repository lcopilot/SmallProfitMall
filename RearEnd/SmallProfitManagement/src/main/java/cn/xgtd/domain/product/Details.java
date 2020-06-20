package cn.xgtd.domain.product;

import java.io.Serializable;
import java.util.List;

/**
 * 返回商品配置 前端格式
 * @author Kite
 * @date 2020/6/18
 */
public class Details implements Serializable {

    /**
     * 商品id
     */
    private Integer productId;
    /**尺寸(返回前端）**/
    private List<ProductContext> size;
    /**颜色(返回前端）**/
    private List<ProductContext> colour;
    /**套餐(返回前端）**/
    private List<ProductContext> combo;
    /**规格(返回前端）**/
    private List<ProductContext> specification;
    /**口味(返回前端）**/
    private List<ProductContext> taste;
    /**商品种类**/
    private List<ProductContext> kind;
    /**商品版本**/
    private List<ProductContext> version;
    /**
     * 配置组合
     */
    private List<ProductDistinction> productDistinctions;

    public List<ProductContext> getSize() {
        return size;
    }

    public void setSize(List<ProductContext> size) {
        this.size = size;
    }

    public List<ProductContext> getColour() {
        return colour;
    }

    public void setColour(List<ProductContext> colour) {
        this.colour = colour;
    }

    public List<ProductContext> getCombo() {
        return combo;
    }

    public void setCombo(List<ProductContext> combo) {
        this.combo = combo;
    }

    public List<ProductContext> getSpecification() {
        return specification;
    }

    public void setSpecification(List<ProductContext> specification) {
        this.specification = specification;
    }

    public List<ProductContext> getTaste() {
        return taste;
    }

    public void setTaste(List<ProductContext> taste) {
        this.taste = taste;
    }

    public List<ProductContext> getKind() {
        return kind;
    }

    public void setKind(List<ProductContext> kind) {
        this.kind = kind;
    }

    public List<ProductContext> getVersion() {
        return version;
    }

    public void setVersion(List<ProductContext> version) {
        this.version = version;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public List<ProductDistinction> getProductDistinctions() {
        return productDistinctions;
    }

    public void setProductDistinctions(List<ProductDistinction> productDistinctions) {
        this.productDistinctions = productDistinctions;
    }
}
