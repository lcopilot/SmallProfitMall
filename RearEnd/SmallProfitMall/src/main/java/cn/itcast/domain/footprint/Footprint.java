package cn.itcast.domain.footprint;

import javax.xml.crypto.Data;
import java.util.Date;

//足迹
public class Footprint {
    private int footprintId;
    private int productId;
    private String userId;
    private Date footprintTime;

    public int getFootprintId() {
        return footprintId;
    }

    public void setFootprintId(int footprintId) {
        this.footprintId = footprintId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }


    public Date getFootprintTime() {
        return footprintTime;
    }

    public void setFootprintTime(Date footprintTime) {
        this.footprintTime = footprintTime;
    }
}


