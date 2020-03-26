package cn.itcast.dao;

import cn.itcast.domain.favorite.Evaluation;
import org.apache.ibatis.annotations.Param;

//收藏
public interface EvaluationDao {
    //添加收藏
    public int addEvaluation(Evaluation evaluation);

    //根据用户id商品id查询收藏
    public Evaluation fendEvaluation(@Param("userId")String userId ,@Param("productId") int productId);

    //删除收藏
}
