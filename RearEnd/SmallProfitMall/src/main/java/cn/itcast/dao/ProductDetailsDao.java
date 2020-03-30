package cn.itcast.dao;


import cn.itcast.domain.ProductDatails.ProductBasis;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

//商品详细
public interface ProductDetailsDao {


    /**
     * 查询商品价格
     * @param userId
     * @return
     */
    public ProductDetailsResult fendProduct(@Param("userId")Integer userId);


}