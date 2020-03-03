package cn.itcast.service;

import cn.itcast.domain.ProductDetails;
import cn.itcast.domain.ProductDetailsResult;
import org.apache.ibatis.annotations.Param;

public interface ProductDetailsService {
    //查询秒杀商品表
    public ProductDetailsResult findByPid (String pid );
}
