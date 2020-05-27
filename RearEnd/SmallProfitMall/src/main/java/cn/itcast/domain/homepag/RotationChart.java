package cn.itcast.domain.homepag;

import java.io.Serializable;
import java.util.List;

/**
 * @author kite
 */ //轮播图
public class RotationChart implements Serializable {
    /**大轮播图**/
    private String bigRotationChart;
    /**大轮播图跳转地址**/
    private String site;
    /**小轮播图**/
    private List<Slideshow> smallRotationChart;

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public List<Slideshow> getSmallRotationChart() {
        return smallRotationChart;
    }

    public void setSmallRotationChart(List<Slideshow> smallRotationChart) {
        this.smallRotationChart = smallRotationChart;
    }

    public String getBigRotationChart() {
        return bigRotationChart;
    }

    public void setBigRotationChart(String bigRotationChart) {
        this.bigRotationChart = bigRotationChart;
    }
}
