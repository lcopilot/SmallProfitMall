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
     * @param userId 用户id
     * @param state 消息状态
     * @param currentPage 查询开始页
     * @param pageSize 每页查询的数量
     * @return 消息集合
     */
    @Autowired
    NewsDao newsDao;
    @Override
    public List<News> fendNews(String userId,Integer state,Integer currentPage, Integer pageSize) {
        //传入当前页减一
        currentPage=currentPage-1;
        List<News> news =  newsDao.fendNews(userId,state,currentPage,pageSize);
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

    /**
     * 查询未读消息数量
     * @param userId 用户id
     * @return
     */
    @Override
    public Integer unreadQuantity(String userId) {
        return newsDao.unreadQuantity(userId);
    }

    /**
     * 修改消息状态
     * @param userId 用户id
     * @param contentId 消息id 消息id为空则代表修改所有未读消息已读
     * @return
     */
    @Override
    public Integer updateNewsStatus(String userId, Integer contentId) {
        return newsDao.updateNewsStatus(userId,contentId);
    }
}
