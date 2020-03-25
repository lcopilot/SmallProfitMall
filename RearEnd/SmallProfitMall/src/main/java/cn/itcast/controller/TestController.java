package cn.itcast.controller;


import cn.itcast.domain.homepag.Navigation;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/TestController")
@ResponseBody
public class TestController {
    @Autowired
    QueryResult queryResult;
    //商品分类导航栏
    @RequestMapping(value = "/Test/{test}",method = RequestMethod.GET)
    public QueryResponseResult findNavigation(@PathVariable("test")int test){
        List a=new ArrayList();
        for (int i = 0; i <10 ; i++) {
            if (test==1){
                a.add(test+i);
            }else {
                a.add(test*10+i);
            }
        }

        queryResult.setList(a);
        return  new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }
}
