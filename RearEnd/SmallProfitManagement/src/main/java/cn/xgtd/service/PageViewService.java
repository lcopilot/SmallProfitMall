package cn.xgtd.service;

import cn.xgtd.domain.homePage.PageView;

/**
 * @author Kite
 * @date 2020/6/28
 */

public interface PageViewService {

    /**
     * 查询访客数据
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @return
     */
    public PageView findPageView(String startDate , String endDate);
}
