package cn.xgtd.domain.homePage;

import javax.xml.crypto.Data;
import java.io.Serializable;
import java.util.Date;

/**
 * @author Kite
 * @date 2020/6/29
 */
public class DataDate implements Serializable {
    /**日期**/
    private String date;
    /**数据**/
    private String data;


    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
