package cn.itcast.messageQueue.consumer.order;

import cn.itcast.dao.MemberDao;
import cn.itcast.dao.NewsDao;
import cn.itcast.dao.OrderDao;
import cn.itcast.domain.member.ConsumptionRecords;
import cn.itcast.domain.news.News;
import cn.itcast.domain.order.Order;
import cn.itcast.service.NewsService;
import com.alibaba.fastjson.JSONObject;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
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


    @Autowired
    MemberDao memberDao;

    public void orderPushNews(JSONObject orderJson) throws IOException {
        Order orders =JSONObject.toJavaObject(orderJson, Order.class);
        //添加商品信息
        orders.setProductContents(orderDao.fendOrderProduct(orders.getOrderId()));
        String stringOrderJson= JSONObject.toJSONString(orders);
        //添加订单消息内容
        News news = new News();
        //设置用户id
        news.setUserId(orders.getUserId());
        //设置消息状态
        news.setNewsStatus("1");
        //设置消息发送者 4为订单助手
        news.setSenderId(4);
        //设置消息种类
        news.setNewsType(4);
        //设置消息发送时间
        news.setNewsTime(new Date());
        //设置消息标题
        news.setTitle("确认订单消息");
        //设置消息标志位
        news.setSign(false);
        //设置消息简介
        news.setIntroduction("消息简介");
        //设置消息类型id
        news.setNewsTypeId(orders.getOrderId());
        //新增消息
        newsDao.addNews(news);


        //查询订单消息
        News orderNews = newsDao.fenNewsById(news.getContentId());

        News newsConsumptionRecords  = new News();
        //设置用户id
        newsConsumptionRecords .setUserId(orders.getUserId());
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

        //订单id
        consumptionRecords.setOrderId(orders.getOrderId());
        //用户id
        consumptionRecords.setUserId(orders.getUserId());
        //订单状态
        consumptionRecords.setPaymentStatus(1);
        //消息类型
        consumptionRecords.setSenderId("3");
        //支付时间
        consumptionRecords.setPaymentTime(new Date());
        //支付金额
        consumptionRecords.setPaymentAmount(orders.getOrderTotal().toString());
        //设置消息类型id
        newsConsumptionRecords.setNewsTypeId(orders.getOrderId());

        memberDao.addConsumptionRecords(consumptionRecords);
        ConsumptionRecords consumptionRecords1 = memberDao.findConsumptionRecords(orders.getUserId(),orders.getOrderId());
        String stringOrderJson1= JSONObject.toJSONString(consumptionRecords1);
        newsDao.addNews(newsConsumptionRecords);
        List<News> newsList =new ArrayList();
        //查询支付消息
        News consumptionRecordss = newsDao.fenNewsById(news.getContentId());
        newsList.add(orderNews);

        Order orderss=orderDao.findDetailedOrder(orders.getUserId(),orders.getOrderId());
        String jsonObjects = JSONObject.toJSONString(orderss);

        for (int i = 0; i <newsList.size() ; i++) {
            //转换消息内容为JSON
            newsList.get(i).setNewsContentJson(JSONObject.parseObject(jsonObjects));
            newsList.get(i).setNewsContent(null);
        }
        //未读消息数量
        Integer unreadQuantity =  newsService.unreadQuantity(orders.getUserId());
        //推送消息
        int result = newsService.pushNews(newsList,unreadQuantity);
        if(result==0){
                final long timeInterval = 1000*30;
                Runnable runnable = new Runnable() {
                    @SneakyThrows
                    @Override
                    public void run() {
                        while (true) {
                            newsService.pushNews(newsList,unreadQuantity);
                            try {
                                Thread.sleep(timeInterval);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                };
                //创建定时器
                Thread thread = new Thread(runnable);
                //开始执行
                thread.start();
            }

        }
}
