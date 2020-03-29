package cn.itcast.service;

import cn.itcast.domain.news.News;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Kite
 * @date 2020/3/29
 */

public interface NewsService {

    /**
     * 查询消息历史记录
     * @param userId
     * @return
     */
    public List<News> fendNews(String userId ,Integer currentPage, Integer pageSize);
}
