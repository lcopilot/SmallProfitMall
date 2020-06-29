package cn.xgtd.domain.homePage;

import java.io.Serializable;
import java.util.List;

/**
 * 访问量
 * @author Kite
 * @date 2020/6/28
 */
public class PageView implements Serializable {
    /**总访问量**/
    private Integer pv;
    /**日期访问量数据**/
    private List dataDate;

    public Integer getPv() {
        return pv;
    }

    public void setPv(Integer pv) {
        this.pv = pv;
    }

    public List getDataDate() {
        return dataDate;
    }

    public void setDataDate(List dataDate) {
        this.dataDate = dataDate;
    }
}
