package cn.xgtd.domain.product;

import java.util.List;

/**
 * 返回商品配置 前端格式
 * @author Kite
 * @date 2020/6/18
 */
public class Details {

    /**
     * 商品id
     */
    private Integer productId;
    /**
     * 配置组合
     */
    private List<ProductDistinction> productDistinctions;

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
