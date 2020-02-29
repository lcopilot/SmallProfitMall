package cn.itcast.domain;

import java.io.Serializable;
//主页导航
public class Navigation_2 implements Serializable {
    private int cid;
    private String goodsName_1_c;
    private String goodsId_1_c;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getGoodsName_1_c() {
        return goodsName_1_c;
    }

    public void setGoodsName_1_c(String goodsName_1_c) {
        this.goodsName_1_c = goodsName_1_c;
    }

    public String getGoodsId_1_c() {
        return goodsId_1_c;
    }

    public void setGoodsId_1_c(String goodsId_1_c) {
        this.goodsId_1_c = goodsId_1_c;
    }

    @Override
    public String toString() {
        return "Navigation_2{" +
                "cid=" + cid +
                ", goodsName_1_c='" + goodsName_1_c + '\'' +
                ", goodsId_1_c='" + goodsId_1_c + '\'' +
                '}';
    }
}

