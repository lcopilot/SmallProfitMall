package cn.xgtd.dao;

import cn.xgtd.domain.homePage.KeyWord;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author Kite
 * @date 2020/6/28
 */
@Mapper
public interface KeyWordDao {

    /**
     * 查询关键词排行
     * @param quantity 查询数量
     * @return
     */
    public List<KeyWord> findWeekRanking(Integer quantity);

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
}
