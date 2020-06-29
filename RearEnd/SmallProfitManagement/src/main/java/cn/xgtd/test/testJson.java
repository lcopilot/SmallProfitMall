package cn.xgtd.test;

import cn.xgtd.domain.homePage.PageView;
import com.alibaba.fastjson.JSONObject;
import com.sun.deploy.util.StringUtils;


import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Kite
 * @date 2020/6/28
 */
public class testJson {
    public static void main(String[] args) {
        String result = "{\"header\":{\"desc\":\"success\",\"failures\":[],\"oprs\":1,\"succ\":1,\"oprtime\":0,\"quota\":1,\"rquota\":49944,\"status\":0},\"body\":{\"data\":[{\"result\":{\"total\":28,\"items\":[[[\"2020/06/28\"],[\"2020/06/27\"],[\"2020/06/26\"],[\"2020/06/25\"],[\"2020/06/24\"],[\"2020/06/23\"],[\"2020/06/22\"],[\"2020/06/21\"],[\"2020/06/20\"],[\"2020/06/19\"],[\"2020/06/18\"],[\"2020/06/17\"],[\"2020/06/16\"],[\"2020/06/15\"],[\"2020/06/14\"],[\"2020/06/13\"],[\"2020/06/12\"],[\"2020/06/11\"],[\"2020/06/10\"],[\"2020/06/09\"],[\"2020/06/08\"],[\"2020/06/07\"],[\"2020/06/06\"],[\"2020/06/05\"],[\"2020/06/04\"],[\"2020/06/03\"],[\"2020/06/02\"],[\"2020/06/01\"]],[[14],[49],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"],[\"--\"]],[],[]],\"timeSpan\":[\"2020/06/01 - 2020/06/28\"],\"sum\":[[63],[]],\"offset\":0,\"pageSum\":[[63],[],[]],\"fields\":[\"simple_date_title\",\"visitor_count\"]}}]}}";
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
            for (int i = 0; i <dateDataList.size() ; i++) {
                String[] a = (String[]) dateDataList.get(i);
                System.out.println(Arrays.toString((a) ));
            }

            PageView pageView = new PageView();


            //总访问量数据
            List sum = (List) items.get("sum");
            List a = (List) sum.get(0);
            Integer s = (Integer) a.get(0);
            System.out.println(s);



        }

    }


}
