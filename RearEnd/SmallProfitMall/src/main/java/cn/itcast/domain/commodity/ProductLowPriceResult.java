package cn.itcast.domain.commodity;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import java.io.Serializable;
import java.util.List;
//低价商品返回类
@Component("productLowPriceResult")
public class ProductLowPriceResult implements Serializable {
    private List[] ProductLowPrice ;

    public List[] getProductLowPrice() {
        return ProductLowPrice;
    }

    public void setProductLowPrice(List[] productLowPrice) {
        ProductLowPrice = productLowPrice;
    }
}
