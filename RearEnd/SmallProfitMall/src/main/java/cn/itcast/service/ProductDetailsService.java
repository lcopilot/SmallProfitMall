package cn.itcast.service;

import cn.itcast.domain.ProductDatails.ProductDetailsResult;

import java.util.List;

public interface ProductDetailsService {
    //根据id查询商品详细
    public List<ProductDetailsResult> findByPid(int pid);

}
