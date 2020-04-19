package cn.itcast.service;

import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.domain.footprint.Footprint;

import java.util.List;

public interface EvaluationService {
    /**
     * 添加收藏
     * @param evaluation 收藏对象
     * @return
     */
    public int addEvaluation(Evaluation evaluation);

    /**
     * 查询收藏
     * @param userId 用户id
     * @param currentPage 当前页
     * @param pageSize 每次页查询条数
     * @return
     */
    public List<Evaluation> fendFavorite(String userId, Integer currentPage, Integer pageSize);

    /**
     * 查询总页数跟总记录数
     * @param userId 用户id
     * @param pageSize 每页查询数量
     * @return
     */
    public Integer[] fendTotalPage(String userId, Integer pageSize);

    /**
     * 删除收藏
     * @param userId 用户id
     * @param evaluationId 收藏id
     * @return 影响行数
     */
    public Integer deleteFootprint(String userId, Integer evaluationId, Boolean deleteAll);
}
