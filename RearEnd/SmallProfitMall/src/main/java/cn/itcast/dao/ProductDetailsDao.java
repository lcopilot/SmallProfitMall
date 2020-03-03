package cn.itcast.dao;

import cn.itcast.domain.ProductDatails.Size;
import cn.itcast.domain.ProductDetails;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductDetailsDao {
    //商品详细页
    public ProductDetails findByPid (@Param("pid")String pid );

    public Size findSizeByPid(@Param("sid")String sid);
}
