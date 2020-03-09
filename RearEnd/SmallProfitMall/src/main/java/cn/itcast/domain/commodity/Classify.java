package cn.itcast.domain.commodity;

import java.io.Serializable;

public class Classify implements Serializable {
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
}
