package cn.xgtd.dao;

import cn.xgtd.domain.homePage.KeyWord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 关键词
 * @author Kite
 * @date 2020/6/28
 */
@Mapper
public interface KeyWordDao {

    /**
     * 查询排行
     * @param start 开始数据
     * @param pageSize 每页数量
     * @return
     */
    public List<KeyWord> findWeekRanking(@Param("start") Integer start,@Param("pageSize") Integer pageSize);

    /**
     * 查询本周关键词搜索次数
     * @param keyword 关键词
     * @return
     */
    public Integer findWeekFrequency(String keyword);

    /**
     * 查询上周关键词搜索次数
     * @param keyword 关键词
     * @return
     */
    public Integer findLastWeekFrequency(String keyword);

    /**
     * 查询关键词数量
     * @return
     */
    public Integer findKeyWordQuantity();
}
