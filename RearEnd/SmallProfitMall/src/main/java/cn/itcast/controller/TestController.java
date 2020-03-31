package cn.itcast.controller;


import cn.itcast.dao.NewsDao;
import cn.itcast.dao.ProductDao;
import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.domain.homepag.Navigation;
import cn.itcast.domain.news.News;
import cn.itcast.messageQueue.producer.shopping.ShoppingProducer;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/TestController")
@ResponseBody
public class TestController {
    @Autowired
    ShoppingProducer shoppingProducer;

    @Autowired
    NewsDao newsDao;

    @Autowired
    ProductDetailsDao productDetailsDao;

    //测试
    @RequestMapping(value = "/Test/{test}",method = RequestMethod.GET)
    public QueryResponseResult findNavigation(@PathVariable("test")int test){
        QueryResult queryResult = new QueryResult();
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


//    @RequestMapping(value = "/email/{e}",method = RequestMethod.GET)
//    public void email(){
//        String[] a = {"2252821162@qq.com","尊敬的微利会员，您关注的商品"};
//        shoppingProducer.sendDeleteCart("arrival",a);
//    }
//
//    @RequestMapping(value = "/wevSocket/{userId}/{msg}",method = RequestMethod.GET)
//    public void wevSocket(@PathVariable("userId")String userId,@PathVariable("msg")String msg) throws IOException {
//        webSocket.sendMessage(userId,msg);
//    }
//
//    @RequestMapping(value = "/close/{userId}/{msg}",method = RequestMethod.GET)
//    public void close(@PathVariable("userId")String userId,@PathVariable("msg")String msg) throws IOException {
//        webSocket.sendMessage(userId,msg);
//    }

//    @RequestMapping(value = "/test",method = RequestMethod.GET)
//    public QueryResponseResult wevSocket() throws IOException {
//        System.out.println(productDetailsDao.fend());
//        List<ProductDetailsResult> productDetailsResults= Arrays.asList(productDetailsDao.fend());
//        QueryResult queryResult = new QueryResult();
//        queryResult.setList(productDetailsResults);
//        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
//    }

//    @Autowired
//    ProductDao productDao;
//    @RequestMapping(value = "/test",method = RequestMethod.GET)
//    public void a(){
//
//        System.out.println(  productDetailsDao.fendAttributes(10001));
//    }
}
