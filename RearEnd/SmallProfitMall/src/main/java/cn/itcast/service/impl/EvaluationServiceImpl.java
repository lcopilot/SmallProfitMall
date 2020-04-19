package cn.itcast.service.impl;

import cn.itcast.dao.EvaluationDao;
import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.domain.footprint.Footprint;
import cn.itcast.messageQueue.producer.favorite.FavoriteProducer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        FavoriteProducer favoriteProducer = new FavoriteProducer();
        int redis=0;
        //大于3 发送到消息队列
        if (evaluation.getProductIds().length>=3){
            favoriteProducer.sendFavorite("addFavorite",evaluation);
             return 1;
        }

        for (int i = 0; i <evaluation.getProductIds().length ; i++) {
            evaluation.setSign("true");
            evaluation.setEvaluationTime(new Date());
            Evaluation evaluation1 = evaluationDao.fendEvaluation(evaluation.getUserId(),evaluation.getProductIds()[i]);
            evaluation.setProductId(evaluation.getProductIds()[i]);
            if (evaluation1!=null){
                return 0;
            }
            redis=redis+evaluationDao.addEvaluation(evaluation);
        }
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
     * @return
     */
    @Override
    public Integer deleteFootprint(String userId, Integer evaluationId) {
        return evaluationDao.deleteFavorite(userId,evaluationId);
    }
}
