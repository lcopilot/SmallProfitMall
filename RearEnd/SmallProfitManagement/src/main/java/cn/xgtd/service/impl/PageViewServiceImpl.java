package cn.xgtd.service.impl;

import cn.xgtd.domain.homePage.PageView;
import cn.xgtd.service.PageViewService;
import cn.xgtd.util.baidu.TjApi;
import cn.xgtd.util.redis.RedisUtil;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 访问量业务层
 * @author Kite
 * @date 2020/6/28
 */
@Service
public class PageViewServiceImpl implements PageViewService {


    @Autowired
    RedisUtil redisUtil;
    /**
     * 查询访问量
     * @param  gran 按小时 按天 按月 按年
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @return
     */
    @Override
    public PageView findPageView(String gran,String startDate , String endDate) {
     String key = gran+"pv"+startDate+endDate;
        PageView pageViewRedis = (PageView) redisUtil.get(key);
        if (pageViewRedis!=null){
            return pageViewRedis;
     }
        String result = TjApi.TjApi(gran,startDate,endDate);

        PageView pageView = new PageView();
        JSONObject jsonObject1 =JSONObject.parseObject(result);
        JSONObject header = (JSONObject) jsonObject1.get("header");
        String desc = (String) header.get("desc");
        if ("success".equals(desc)){
            JSONObject body = (JSONObject) jsonObject1.get("body");
            List data = (List) body.get("data");
            JSONObject results =JSONObject.parseObject(data.get(0)+"");
            Object resultObj =  results.get("result");
            JSONObject items = JSONObject.parseObject(resultObj+"");
            //日期访问量数据
            List ItemsList = (List) items.get("items");
            //总记录数
            Integer total = (Integer) items.get("total");
            List dateList = (List) ItemsList.get(0);
            List dataList = (List) ItemsList.get(1);
            List dateDataList = new ArrayList();
            for (int i = 0; i <total ; i++) {
                List dateLists = (List) dateList.get(i);
                List dataLists = (List) dataList.get(i);
                String[] dateDataArray = new String[1];
                dateDataArray[0]=dateLists.get(0)+","+dataLists.get(0);
                dateDataList.add(dateDataArray);
            }
            //总访问量数据
            List sum = (List) items.get("sum");

            List sums = (List) sum.get(0);
            String pvs =sums.get(0).toString();
            Integer pv =0;
            if (!pvs.equals("--")){
                pv = (Integer) sums.get(0);
            }
            pageView.setPv(pv);
            pageView.setDataDate(dateDataList);

        }
        redisUtil.set(key,pageView,600000);
        return pageView;
    }
}
