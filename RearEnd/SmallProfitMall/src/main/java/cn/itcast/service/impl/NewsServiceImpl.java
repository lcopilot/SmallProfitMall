package cn.itcast.service.impl;

import cn.itcast.dao.NewsDao;
import cn.itcast.domain.news.News;
import cn.itcast.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Kite
 * @date 2020/3/29
 */
@Service
public class NewsServiceImpl implements NewsService {
    /**
     * 查询消息
     * @param userId
     * @return
     */
    @Autowired
    NewsDao newsDao;
    @Override
    public List<News> fendNews(String userId,Integer currentPage, Integer pageSize) {
        //传入当前页减一
        currentPage=currentPage-1;
        List<News> news =  newsDao.fendNews(userId,currentPage,pageSize);
        return news;
    }

    /**
     * 查询总记录数
     * @param userId
     * @return
     */
    @Override
    public Integer fendTotal(String userId) {
        return newsDao.fendTotal(userId);
    }
}
