package cn.itcast.controller;


import cn.itcast.dao.*;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.domain.homepag.Navigation;
import cn.itcast.domain.member.ConsumptionRecords;
import cn.itcast.domain.news.News;
import cn.itcast.domain.order.Order;
import cn.itcast.messageQueue.producer.shopping.ShoppingProducer;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
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

    @Autowired
    OrderDao orderDao;

    @Autowired
    MemberDao memberDao;
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

    @RequestMapping(value = "/t/{a}/{b}",method = RequestMethod.GET)
    public QueryResponseResult test(@PathVariable("a")String a,@PathVariable("b") String b){
        Order order = orderDao.findOrder(a,b);
        QueryResult queryResult=new QueryResult();
        queryResult.setList(Arrays.asList(order) );
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }


    @RequestMapping(value = "/email",method = RequestMethod.GET)
    public void email(){
        String[] a = {"2252821162@qq.com","尊敬的微利会员，您关注的商品"};
        shoppingProducer.sendShoppingInformation("arrival",a);
    }
    @RequestMapping(value = "/asd",method = RequestMethod.GET)
    public void asd(){
        News newsConsumptionRecords  = new News();
        //设置用户id
        newsConsumptionRecords .setUserId("asdas");
        //设置消息状态
        newsConsumptionRecords .setNewsStatus("1");
        //设置消息发送者 4为订单助手
        newsConsumptionRecords .setSenderId(3);
        //设置消息种类
        newsConsumptionRecords .setNewsType(3);
        //设置消息发送时间
        newsConsumptionRecords .setNewsTime(new Date());
        //设置消息标题
        newsConsumptionRecords .setTitle("支付通知");
        //设置消息标志位
        newsConsumptionRecords .setSign(false);
        //设置消息简介
        newsConsumptionRecords .setIntroduction("支付通知");

        //设置支付通知的内容
        ConsumptionRecords consumptionRecords=new ConsumptionRecords();
        consumptionRecords.setOrderId("asdas");
        consumptionRecords.setUserId("asdas");
        consumptionRecords.setPaymentStatus(1);
        consumptionRecords.setSenderId("3");
        consumptionRecords.setPaymentTime(new Date());
        consumptionRecords.setProductName("滴滴");
        memberDao.addConsumptionRecords(consumptionRecords);
        ConsumptionRecords consumptionRecords1 = memberDao.findConsumptionRecords("asdas","asdas");
        String stringOrderJson1= JSONObject.toJSONString(consumptionRecords1);
        newsConsumptionRecords.setNewsContent(stringOrderJson1);
        newsDao.addNews(newsConsumptionRecords);
        News orderNews2 = newsDao.fenNewsById(newsConsumptionRecords.getContentId());

        System.out.println(orderNews2);
    }

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
