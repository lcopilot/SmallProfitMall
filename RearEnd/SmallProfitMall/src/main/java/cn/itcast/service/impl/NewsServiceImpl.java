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
    public List<News> fendNews(String userId) {
        return newsDao.fendNews(userId);
    }
}
