package cn.itcast.service.impl;

import cn.itcast.dao.EvaluationDao;
import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.messageQueue.producer.favorite.FavoriteProducer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service
@Transactional
public class EvaluationService implements cn.itcast.service.EvaluationService {
    @Autowired
    EvaluationDao evaluationDao;

    //添加收藏
    @Override
    public int addEvaluation(Evaluation evaluation) {
        FavoriteProducer favoriteProducer = new FavoriteProducer();
        int redis=0;
        if (evaluation.getProductIds().length>=3){  //大于3 发送到消息队列
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
}
