package cn.itcast.dao;

import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.domain.footprint.Footprint;
import org.apache.ibatis.annotations.Param;

import java.util.List;

//收藏
public interface EvaluationDao {
    /**
     * 添加收藏
     * @param evaluation 收藏对象
     * @return
     */
    public Integer addEvaluation(List<Evaluation> evaluation);

    /**
     * 查询收藏
     * @param userId 用户id
     * @param productId 商品id
     * @return
     */
    public Evaluation fendEvaluation(@Param("userId")String userId ,@Param("productId") int productId);

    /**
     * 查询用户所有收藏
     * @param userId 用户id
     * @param start 开始
     * @param pageSize  每页查询数量
     * @return
     */
    public List<Evaluation> fendFavorite(@Param("userId")String userId, @Param("start")Integer start,@Param("pageSize") Integer pageSize);

    /**
     * 查询收藏数量
     * @param userId
     * @return
     */
    public Integer fendFavoriteQuantity(@Param("userId")String userId);


    /**
     *
     * 删除足迹
     * @param userId 用户id
     * @param evaluationId 为空则代表删除所有
     * @param deleteAll 是否为删除全部 true为删除全部 false为删除单个
     * @return
     */
    public Integer deleteFavorite(@Param("userId")String userId, @Param("evaluationId")Integer evaluationId , @Param("deleteAll")Boolean deleteAll);
}
