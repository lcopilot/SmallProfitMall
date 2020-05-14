package cn.itcast.domain.homepag;

import java.io.Serializable;

//轮播图
public class RotationChart implements Serializable {
    private String Rid;                         //id
    private String RotationChartOne;            //大轮播图图片
    private String RotationChartOneSite;        //大轮播图地址
    private String RotationChartTwo_1;          //第一张小轮播图图片
    private String RotationChartTwoSite_1;      //第一张小轮播图跳转地址
    private String RotationChartTwo_2;          //第二张小轮播图图片
    private String RotationChartTwoSite_2;      //第二张小轮播图跳转地址
    private String RotationChartTwo_3;          //第三张小轮播图图片
    private String RotationChartTwoSite_3;      //第三张小轮播图跳转地址


    public String getRid() {
        return Rid;
    }

    public void setRid(String rid) {
        Rid = rid;
    }

    public String getRotationChartOne() {
        return RotationChartOne;
    }

    public void setRotationChartOne(String rotationChartOne) {
        RotationChartOne = rotationChartOne;
    }

    public String getRotationChartOneSite() {
        return RotationChartOneSite;
    }

    public void setRotationChartOneSite(String rotationChartOneSite) {
        RotationChartOneSite = rotationChartOneSite;
    }

    public String getRotationChartTwo_1() {
        return RotationChartTwo_1;
    }

    public void setRotationChartTwo_1(String rotationChartTwo_1) {
        RotationChartTwo_1 = rotationChartTwo_1;
    }

    public String getRotationChartTwoSite_1() {
        return RotationChartTwoSite_1;
    }

    public void setRotationChartTwoSite_1(String rotationChartTwoSite_1) {
        RotationChartTwoSite_1 = rotationChartTwoSite_1;
    }

    public String getRotationChartTwo_2() {
        return RotationChartTwo_2;
    }

    public void setRotationChartTwo_2(String rotationChartTwo_2) {
        RotationChartTwo_2 = rotationChartTwo_2;
    }

    public String getRotationChartTwoSite_2() {
        return RotationChartTwoSite_2;
    }

    public void setRotationChartTwoSite_2(String rotationChartTwoSite_2) {
        RotationChartTwoSite_2 = rotationChartTwoSite_2;
    }

    public String getRotationChartTwo_3() {
        return RotationChartTwo_3;
    }

    public void setRotationChartTwo_3(String rotationChartTwo_3) {
        RotationChartTwo_3 = rotationChartTwo_3;
    }

    public String getRotationChartTwoSite_3() {
        return RotationChartTwoSite_3;
    }

    public void setRotationChartTwoSite_3(String rotationChartTwoSite_3) {
        RotationChartTwoSite_3 = rotationChartTwoSite_3;
    }
}
