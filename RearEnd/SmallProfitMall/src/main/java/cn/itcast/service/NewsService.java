package cn.itcast.service;

import cn.itcast.domain.news.News;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * @author Kite
 * @date 2020/3/29
 */

public interface NewsService {

    /**
     * 查询消息
     * @param userId 用户id
     * @param state 消息状态
     * @param currentPage 查询开始页
     * @param pageSize 每页查询的数量
     * @return 消息集合
     */
    public List<News> fendNews(String userId,Integer state,Integer currentPage, Integer pageSize);

    /**
     * 查询总记录数
     * @param userId
     * @return
     */
    public Integer fendTotal(String userId);

    /**
     * 用户未读消息数量
     * @param userId 用户id
     * @return  未读消息数量
     */
    public Integer unreadQuantity(String userId);

    /**
     * 修改消息状态
     * @param userId 用户id
     * @param contentId 消息id 消息id为空则代表修改所有未读消息已读
     * @return
     */
    public Integer updateNewsStatus(String userId,Integer contentId);

    /**
     * 推送消息
     * @param news 消息内容
     * @param unreadQuantity 消息未读数
     * @return 推送是否成功
     * @throws IOException
     */
    public Integer pushNews(List<News> news,Integer unreadQuantity) throws IOException;


}
