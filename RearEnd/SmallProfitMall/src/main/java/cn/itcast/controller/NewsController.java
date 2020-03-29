package cn.itcast.controller;

import cn.itcast.domain.news.News;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

/**
 * @author Kite
 * @date 2020/3/29
 */

@Controller
@RequestMapping("/NewsController")
@ResponseBody
public class NewsController {
    @Autowired
    NewsService newsService;

    @Autowired
    WebSocket webSocket;
    /**
     * 查询所有消息
     * @return
     */
    @RequestMapping(value = "/findNews/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findNews(@PathVariable("userId") String userId) {
        List<News> news = newsService.fendNews(userId);
        QueryResult queryResult = new QueryResult();
        queryResult.setList(news);
        queryResult.setTotal(news.size());
        return  new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }

    /**
     *
     * 发送消息测试
     * @param userId
     * @param msg
     * @throws IOException
     */
    @RequestMapping(value = "/close/{userId}/{msg}",method = RequestMethod.POST)
    public QueryResponseResult close(@PathVariable("userId")String userId,@PathVariable("msg")String msg) throws IOException {
        webSocket.sendMessage(userId,msg);

        return new QueryResponseResult(CommonCode.SUCCESS,null);
    }


}
