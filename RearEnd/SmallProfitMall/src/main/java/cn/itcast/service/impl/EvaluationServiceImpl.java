package cn.itcast.service.impl;

import cn.itcast.dao.EvaluationDao;
import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.domain.footprint.Footprint;
import cn.itcast.messageQueue.producer.favorite.FavoriteProducer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 收藏
 */
@Service
public class EvaluationServiceImpl implements cn.itcast.service.EvaluationService {
    @Autowired
    EvaluationDao evaluationDao;

    /**
     * 添加收藏
     * @param evaluation 收藏对象
     * @return  是否收藏成功
     */
    @Override
    public int addEvaluation(Evaluation evaluation) {
        int redis=0;
        //设置收藏集合
        List<Evaluation> evaluationList = new ArrayList<>();
        for (int i = 0; i <evaluation.getProductIds().length ; i++) {
            Evaluation evaluation1 = evaluationDao.fendEvaluation(evaluation.getUserId(),evaluation.getProductIds()[i]);
            if (evaluation1!=null){
                break;
            }
            Evaluation  evaluations = new Evaluation();
            evaluations.setUserId(evaluation.getUserId());
            evaluations.setSign("true");
            evaluations.setEvaluationTime(new Date());
            evaluations.setProductId(evaluation.getProductIds()[i]);
            /**查询该商品是否收藏 收藏则不添加到收藏集合**/
            evaluationList.add(evaluations);
        }
        redis=redis+evaluationDao.addEvaluation(evaluationList);
        if (redis==evaluation.getProductIds().length){
            return 1;
        }else {
            return 2;
        }
    }

    /**
     * 查询所有收藏
     * @param userId 用户id
     * @param currentPage 当前页
     * @param pageSize 每次页查询条数
     * @return
     */
    @Override
    public List<Evaluation> fendFavorite(String userId, Integer currentPage, Integer pageSize) {
        //开始页
        Integer start=(currentPage-1)*pageSize;
        List<Evaluation> footprints = evaluationDao.fendFavorite(userId,start,pageSize);
        return footprints;
    }

    /**
     * 查询总页数跟总收藏数量
     * @param userId 用户id
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public Integer[] fendTotalPage(String userId, Integer pageSize) {
        Integer[] TotalPage=new Integer[2];
        Integer quantity = evaluationDao.fendFavoriteQuantity(userId);
        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }

    /**
     * 删除收藏
     * @param userId 用户id
     * @param evaluationId 收藏id
     * @param deleteAll 是否为删除全部 true为删除全部 false为删除单个
     * @return 受影响行数
     */
    @Override
    public Integer deleteFootprint(String userId, Integer evaluationId,Boolean deleteAll) {
        return evaluationDao.deleteFavorite(userId,evaluationId,deleteAll);
    }
}
