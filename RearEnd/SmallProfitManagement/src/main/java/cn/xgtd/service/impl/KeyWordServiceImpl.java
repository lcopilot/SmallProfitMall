package cn.xgtd.service.impl;

import cn.xgtd.dao.KeyWordDao;
import cn.xgtd.domain.homePage.KeyWord;
import cn.xgtd.service.KeyWordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.List;

/**
 * 关键词业务层
 * @author Kite
 * @date 2020/6/28
 */
@Service
public class KeyWordServiceImpl implements KeyWordService {


    @Autowired
    KeyWordDao keyWordDao;

    /**
     * 查询关键词排行
     *
     * @return
     */
    @Override
    public List<KeyWord> findKeyWord(Integer currentPage, Integer pageSize) {

        Integer start = (currentPage - 1) * pageSize;
        List<KeyWord> keyWordList = keyWordDao.findWeekRanking(start,pageSize);
        if (keyWordList != null) {
            for (int i = 0; i < keyWordList.size(); i++) {

                keyWordList.get(i).setRanking(start+1+i);
                //关键词
                String KeyWordsName = keyWordList.get(i).getKeyWordsName();
                //查询关键词本周搜索次数
               Integer quantityWeek = keyWordDao.findWeekFrequency(KeyWordsName);
               //上周关键词搜索次数
               Integer quantityLastWeek = keyWordDao.findLastWeekFrequency(KeyWordsName);
                if (quantityWeek!=0 && quantityLastWeek!=0 ){
                    DecimalFormat df=new DecimalFormat("0.00");
                    Double weekRise = new Double(df.format((float)quantityWeek/quantityLastWeek));
                    weekRise =new Double(df.format((float)(weekRise-1)*100));
                    keyWordList.get(i).setWeekRise(weekRise);
                }
                if (quantityWeek==0 && quantityLastWeek==0){
                    keyWordList.get(i).setWeekRise(0.00);
                }
                if (quantityWeek==0 && quantityLastWeek!=0){
                    keyWordList.get(i).setWeekRise(-new Double(quantityWeek*100));
                }
                if (quantityWeek!=0 && quantityLastWeek==0){
                    keyWordList.get(i).setWeekRise(new Double(quantityWeek*100));
                }
            }
        }
        return keyWordList;
    }

    /**
     * 查询
     * @param pageSize
     * @return
     */
    @Override
    public Integer[] fendTotalPage(Integer pageSize) {
        Integer[] TotalPage = new Integer[2];
        Integer quantity = keyWordDao.findKeyWordQuantity();
        int totalPage = (quantity % pageSize) == 0 ? quantity / pageSize : (quantity / pageSize) + 1;
        TotalPage[0] = quantity;
        TotalPage[1] = totalPage;
        return TotalPage;
    }


}