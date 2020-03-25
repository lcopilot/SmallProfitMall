package cn.itcast.controller;

import cn.itcast.domain.Evaluation.Evaluation;
import cn.itcast.domain.footprint.Footprint;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.service.EvaluationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/EvaluationController")
@ResponseBody
public class EvaluationController {
    @Autowired
    EvaluationService evaluationService;
    //添加收藏
    @RequestMapping(value = "/addEvaluation",method = RequestMethod.POST)
    public QueryResponseResult addEvaluation(@RequestBody Evaluation evaluation) {
        if(evaluation==null){
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
        int redis =evaluationService.addEvaluation(evaluation);
        if(redis == 1 ){   //添加成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);//添加成功
        }else {
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
    }
}
