package cn.itcast.dao;

import cn.itcast.domain.footprint.Footprint;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

//足迹
public interface FootprintDao {
    //添加足迹
     public int addFootprint(Footprint footprint);

     //浏览重复商品修改时间根据足迹id
    public int updateTime(@Param("footprintId")int footprintId,@Param("footprintTime")Date footprintTime);


    //根据商品id查询是否浏览过这个商品
    public String findProduct(int productId);

    //删除足迹
}
