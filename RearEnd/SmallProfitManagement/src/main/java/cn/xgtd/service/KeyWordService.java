package cn.xgtd.service;

import cn.xgtd.domain.homePage.KeyWord;

import java.util.List;

/**
 * 主页
 * @author Kite
 * @date 2020/6/28
 */
public interface KeyWordService {

    /**
     * 查询关键词排行
     * @param currentPage 开始页
     * @param pageSize 每页数量
     * @return
     */
    public List<KeyWord> findKeyWord(Integer currentPage, Integer pageSize);


    /**
     * 查询商品总数量跟页数
     * @param pageSize
     * @return
     */
    public Integer[] fendTotalPage(Integer pageSize);
}
