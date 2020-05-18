package cn.itcast.domain.poribuctPageviews;

import java.util.Date;

/**
 * 商品浏览记录
 * @author Kite
 * @date 2020/5/17
 */
public class PoribuctPageviews {
    /**商品id**/
    private Integer productId ;
    /**用户ip**/
    private String userIp;
    /**用户id**/
    private String userId;
    /**访问时间**/
    private Date browseTime;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getUserIp() {
        return userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getBrowseTime() {
        return browseTime;
    }

    public void setBrowseTime(Date browseTime) {
        this.browseTime = browseTime;
    }
}
