package cn.xgtd.controller;

import cn.xgtd.domain.homePage.KeyWord;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.ResultContent;
import cn.xgtd.response.Return.Results;
import cn.xgtd.service.KeyWordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 关键词控制层
 * @author Kite
 * @date 2020/6/28
 */
@Controller
@RequestMapping("/KeyWordController")
@ResponseBody
public class KeyWordController {

    @Autowired
    KeyWordService keyWordService;


    /**
     * 搜索关键词排行
     * @param quantity 查询数量
     * @return
     */
    @RequestMapping(value = "/findKeyWord/{quantity}",method = RequestMethod.GET)
    public ResultContent findKeyWord(@PathVariable("quantity") Integer quantity){
        Results results = new Results();
        List<KeyWord> keyWordList = keyWordService.findKeyWord(quantity);
        results.setData(keyWordList);
        return new ResultContent(CommonCode.SUCCESS,results);
    }
}
