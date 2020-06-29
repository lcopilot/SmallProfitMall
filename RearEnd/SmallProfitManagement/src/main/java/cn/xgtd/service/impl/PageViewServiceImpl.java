package cn.xgtd.service.impl;

import cn.xgtd.domain.homePage.PageView;
import cn.xgtd.service.PageViewService;
import cn.xgtd.util.baidu.CycleUtil;
import cn.xgtd.util.baidu.TjApi;
import cn.xgtd.util.redis.RedisUtil;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 访问量业务层
 * @author Kite
 * @date 2020/6/28
 */
@Service
public class PageViewServiceImpl implements PageViewService {

    /**
     * 查询访问量
     * @param gran 是否指定
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @return
     */
    @Override
    public PageView findPageView(String gran ,String startDate , String endDate) {
        //判断是天/周/月/年
        String grans = null;
        if (gran!=null){
            grans = gran;
        }else {
            try {
                Date date1 = new SimpleDateFormat("yyyyMMdd").parse(startDate);
                Date date2 = new SimpleDateFormat("yyyyMMdd").parse(endDate);
                if (CycleUtil.isSameDate(date1,date2)){
                    grans = "hour";
                }else if (CycleUtil.isSameWeek(date1,date2)){
                    grans = "week";
                }else if (CycleUtil.isSameMonth(date1,date2)){
                    grans = "day";
                }else if (CycleUtil.isSameYear(date1,date2)){
                    grans = "month";
                }else {
                    grans = "month";
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        String result = TjApi.TjApi(grans,startDate,endDate);

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
                List dateDataArray = new ArrayList();
                String datas = dateLists.get(0).toString();
                String dates = dataLists.get(0).toString();
                dateDataArray.add(datas);
                if ("--".equals(dates)){
                    dates = "0";
                }
                dateDataArray.add(dates);
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
        return pageView;
    }
}
