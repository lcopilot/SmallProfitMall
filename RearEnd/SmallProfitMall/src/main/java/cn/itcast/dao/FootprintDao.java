package cn.itcast.dao;

import cn.itcast.domain.footprint.Footprint;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

//足迹
public interface FootprintDao {
    /**
     * 添加足迹
     * @param footprint 足迹对象
     * @return
     */
     public int addFootprint(Footprint footprint);

    /**
     * 浏览重复商品修改时间根据足迹id
     * @param footprintId
     * @param footprintTime
     * @return
     */
    public int updateTime(@Param("footprintId")int footprintId,@Param("footprintTime")Date footprintTime);


    /**
     * 查询是否浏览过这个商品
     * @param productId 商品id
     * @return
     */
    public String findFootprintId(int productId);

    //删除足迹
}
