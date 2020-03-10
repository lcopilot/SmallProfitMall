package cn.itcast.domain.commodity;

import jdk.nashorn.internal.runtime.ListAdapter;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import java.io.Serializable;
import java.util.List;
//秒杀商品返回类
@Component("seckillResult")
public class SeckillResult implements Serializable {

    private List[] seckillProduct ;

    public List[] getSeckillProduct() {
        return seckillProduct;
    }

    public void setSeckillProduct(List[] seckillProduct) {
        this.seckillProduct = seckillProduct;
    }
}
