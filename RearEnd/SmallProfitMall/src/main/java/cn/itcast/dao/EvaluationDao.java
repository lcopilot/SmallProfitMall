package cn.itcast.dao;

import cn.itcast.domain.favorite.Evaluation;
import org.apache.ibatis.annotations.Param;

//收藏
public interface EvaluationDao {
    /**
     * 添加收藏
     * @param evaluation 收藏对象
     * @return
     */
    public int addEvaluation(Evaluation evaluation);

    /**
     * 查询收藏
     * @param userId 用户id
     * @param productId 商品id
     * @return
     */
    public Evaluation fendEvaluation(@Param("userId")String userId ,@Param("productId") int productId);

    //删除收藏
}
