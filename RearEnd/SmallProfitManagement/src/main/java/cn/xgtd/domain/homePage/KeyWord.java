package cn.xgtd.domain.homePage;

/**
 * 关键词
 * @author Kite
 * @date 2020/6/28
 */
public class KeyWord {
    /**关键词**/
    private  String keyWordsName;
    /**用户数量**/
    private  Integer userFrequency;
    /**周涨幅**/
    private Double weekRise;

    public String getKeyWordsName() {
        return keyWordsName;
    }

    public void setKeyWordsName(String keyWordsName) {
        this.keyWordsName = keyWordsName;
    }

    public Integer getUserFrequency() {
        return userFrequency;
    }

    public void setUserFrequency(Integer userFrequency) {
        this.userFrequency = userFrequency;
    }

    public Double getWeekRise() {
        return weekRise;
    }

    public void setWeekRise(Double weekRise) {
        this.weekRise = weekRise;
    }
}
