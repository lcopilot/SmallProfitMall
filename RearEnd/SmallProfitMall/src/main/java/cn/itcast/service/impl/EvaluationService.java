package cn.itcast.service.impl;

import cn.itcast.dao.EvaluationDao;
import cn.itcast.domain.Evaluation.Evaluation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class EvaluationService implements cn.itcast.service.EvaluationService {
    @Autowired
    EvaluationDao evaluationDao;

    //添加收藏
    @Override
    public int addEvaluation(Evaluation evaluation) {
       evaluation.setSign("true");
       evaluation.setEvaluationTime(new Date());
        Evaluation evaluation1 = evaluationDao.fendEvaluation(evaluation.getUserId(),evaluation.getProductId());
        if (evaluation1!=null){
            return 0;
        }
        return evaluationDao.addEvaluation(evaluation);
    }
}
