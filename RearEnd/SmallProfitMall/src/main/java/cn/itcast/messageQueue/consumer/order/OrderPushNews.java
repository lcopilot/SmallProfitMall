package cn.itcast.messageQueue.consumer.order;

import cn.itcast.dao.NewsDao;
import cn.itcast.dao.OrderDao;
import cn.itcast.domain.news.News;
import cn.itcast.domain.order.Order;
import cn.itcast.service.NewsService;
import cn.itcast.util.logic.ConversionJson;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Kite
 * @date 2020/4/7
 */
public class OrderPushNews {

    /**注入订单dao**/
    @Autowired
    OrderDao orderDao;

    /**注入消息dao**/
    @Autowired
    NewsDao newsDao;

    /**注入消息service**/
    @Autowired
    NewsService newsService;

    public void orderPushNews(JSONObject orderJson)throws Exception{
        Order order =JSONObject.toJavaObject(orderJson, Order.class);

        //添加商品信息
        order.setProductContents(orderDao.fendOrderProduct(order.getOrderId()));
        String stringOrderJson= JSONObject.toJSONString(order);
        //添加订单消息内容
        News news = new News();
        //设置用户id
        news.setUserId(order.getUserId());
        //设置消息状态
        news.setNewsStatus("1");
        //设置消息发送者 4为订单助手
        news.setSenderId(4);
        //设置消息种类
        news.setNewsType(4);
        //设置消息发送时间
        news.setNewsTime(new Date());
        //消息内容订单对象转StringJson
        news.setNewsContent(stringOrderJson);
        //设置消息标题
        news.setTitle("确认订单消息");
        //设置消息标志位
        news.setSign(false);
        //设置消息简介
        news.setIntroduction("消息简介");
        //新增消息
        newsDao.addNews(news);
        //查询当前消息
        News orderNews = newsDao.fenNewsById(news.getContentId());
        List<News> newsList =new ArrayList();
        newsList.add(orderNews);
        for (int i = 0; i <newsList.size() ; i++) {
            //转换消息内容为JSON
            newsList.get(i).setNewsContentJson(JSONObject.parseObject(newsList.get(i).getNewsContent()));;
            newsList.get(i).setNewsContent(null);
        }
        //未读消息数量
        Integer unreadQuantity =  newsService.unreadQuantity(order.getUserId());
        //推送消息
       newsService.pushNews(newsList,unreadQuantity);
        System.out.println("----------消息推送成功---------------------");
    }
}
