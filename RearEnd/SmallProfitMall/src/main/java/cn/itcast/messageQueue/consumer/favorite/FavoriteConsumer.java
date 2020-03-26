package cn.itcast.messageQueue.consumer.favorite;

import cn.itcast.dao.EvaluationDao;
import cn.itcast.domain.favorite.Evaluation;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;


public class FavoriteConsumer {

    @Autowired
    EvaluationDao evaluationDao;

    public void addEvaluation(Evaluation msg){
        Evaluation evaluation=msg;
        for (int i = 0; i <evaluation.getProductIds().length ; i++) {
            evaluation.setSign("true");
            evaluation.setEvaluationTime(new Date());
            evaluation.setProductId(evaluation.getProductIds()[i]);
            evaluationDao.addEvaluation(evaluation);
        }
        System.out.println("------------------添加收藏---------------------------------");
    }
}
