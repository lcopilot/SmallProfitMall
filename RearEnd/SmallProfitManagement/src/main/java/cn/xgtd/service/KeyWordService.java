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
     * 查询关键词
     * @param quantity 数量
     * @return
     */
    public List<KeyWord> findKeyWord(Integer quantity);

}
