package cn.itcast.dao;

import cn.itcast.domain.footprint.Footprint;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

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
     * 查询商品当天是否被浏览过
     * @param productId 商品id
     * @param userId 用户id
     * @return 商品id
     */
    public String findFootprintId(@Param("productId") Integer productId ,@Param("userId")  String userId);

    /**
     *  查询足迹
     * @param userId 用户id
     * @param start 查询的开始页
     * @param pageSize 查询数量
     * @return
     */
    public List<Footprint> fendFootprint(@Param("userId") String userId ,@Param("start")Integer start, @Param("pageSize")Integer pageSize);

    /**
     * 查询足迹总数量
     * @param userId
     * @return
     */
    public Integer fendFootprintQuantity(@Param("userId") String userId);

    /**
     * 删除足迹
     * @param userId 用户id
     * @param footprintId 为空则代表删除所有
     * @param deleteAll 是否为删除全部 true为删除全部 false为删除单个
     * @return
     */
    public Integer deleteFootprint(@Param("userId")String userId, @Param("footprintId")Integer footprintId ,@Param("deleteAll") Boolean deleteAll);

}
