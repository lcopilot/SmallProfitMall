package cn.itcast.dao;

import cn.itcast.domain.news.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Kite
 * @date 2020/3/28
 */
public interface NewsDao {
    /**
     * 查询消息
     * @param userId
     * @return 消息实体类
     */
    public List<News> fendNews(@Param("userId")String userId,@Param("currentPage")Integer currentPage,@Param("pageSize")Integer pageSize);
}
