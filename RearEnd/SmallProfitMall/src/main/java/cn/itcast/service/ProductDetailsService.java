package cn.itcast.service;

import cn.itcast.domain.ProductDatails.ProductDetailsResult;

import java.util.List;

public interface ProductDetailsService {
    /**
     * 查询商品详细
     * @param pid 商品id
     * @return 商品详细数据
     */
    public List<ProductDetailsResult> findByPid(int pid);

}
