package cn.xgtd.service;

import cn.xgtd.domain.homePage.PageView;

/**
 * @author Kite
 * @date 2020/6/28
 */

public interface PageViewService {

    /**
     * 查询访客数据
     * @param  gran 按小时 按天 按月 按年
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @return
     */
    public PageView findPageView(String gran,String startDate , String endDate);
}
