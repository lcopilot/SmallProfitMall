package cn.itcast.domain.homepag;

import java.io.Serializable;
//侧边导航
public class Navigation implements Serializable {
    private  Integer cid;
    private Integer nid;
    private String goodsName_1;
    private String goodsId_1;
    private String goodsName_2;
    private String goodsId_2;
    private String goodsName_3;
    private String goodsId_3;
    private String goodsName_4;
    private String goodsId_4;

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public String getGoodsName_1() {
        return goodsName_1;
    }

    public void setGoodsName_1(String goodsName_1) {
        this.goodsName_1 = goodsName_1;
    }

    public String getGoodsId_1() {
        return goodsId_1;
    }

    public void setGoodsId_1(String goodsId_1) {
        this.goodsId_1 = goodsId_1;
    }

    public String getGoodsName_2() {
        return goodsName_2;
    }

    public void setGoodsName_2(String goodsName_2) {
        this.goodsName_2 = goodsName_2;
    }

    public String getGoodsId_2() {
        return goodsId_2;
    }

    public void setGoodsId_2(String goodsId_2) {
        this.goodsId_2 = goodsId_2;
    }

    public String getGoodsName_3() {
        return goodsName_3;
    }

    public void setGoodsName_3(String goodsName_3) {
        this.goodsName_3 = goodsName_3;
    }

    public String getGoodsId_3() {
        return goodsId_3;
    }

    public void setGoodsId_3(String goodsId_3) {
        this.goodsId_3 = goodsId_3;
    }

    public String getGoodsName_4() {
        return goodsName_4;
    }

    public void setGoodsName_4(String goodsName_4) {
        this.goodsName_4 = goodsName_4;
    }

    public String getGoodsId_4() {
        return goodsId_4;
    }

    public void setGoodsId_4(String goodsId_4) {
        this.goodsId_4 = goodsId_4;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }
}
