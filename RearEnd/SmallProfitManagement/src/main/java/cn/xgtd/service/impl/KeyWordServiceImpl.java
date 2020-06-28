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
    public List<KeyWord> findKeyWord(Integer quantity) {
        List<KeyWord> keyWordList = keyWordDao.findWeekRanking(quantity);
        if (keyWordList != null) {
            for (int i = 0; i < keyWordList.size(); i++) {
                //关键词
                String KeyWordsName = keyWordList.get(i).getKeyWordsName();
                //查询关键词本周搜索次数
               Integer quantityWeek = keyWordDao.findWeekFrequency(KeyWordsName);
               //上周关键词搜索次数
               Integer quantityLastWeek = keyWordDao.findLastWeekFrequency(KeyWordsName);
                if (quantityWeek!=0 && quantityLastWeek!=0 ){
                    DecimalFormat df=new DecimalFormat("0.00");
                    Double weekRise = new Double(df.format((float)quantityWeek/quantityLastWeek));
                    if (quantityWeek<quantityLastWeek){
                        keyWordList.get(i).setWeekRise(-weekRise*100);
                    }else {
                        keyWordList.get(i).setWeekRise(weekRise*100);
                    }

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


}