package cn.xgtd.domain.arrivalNotice;

import java.io.Serializable;

/**
 * 到货通知
 * @author Kite
 * @date 2020/6/24
 */
public class ArrivalNotice implements Serializable {
    /**通知记录id**/
    public Integer arrivalNoticeId;
    /**用户id**/
    public String userId;
    /**用户邮箱**/
    public String userEmail;
    /**用户名称**/
    public String userName;
    /**商品id**/
    public Integer productId;
    /**商品名称**/
    public String productName;
    /**配置id**/
    public Integer distinctionId;

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Integer getArrivalNoticeId() {
        return arrivalNoticeId;
    }

    public void setArrivalNoticeId(Integer arrivalNoticeId) {
        this.arrivalNoticeId = arrivalNoticeId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getDistinctionId() {
        return distinctionId;
    }

    public void setDistinctionId(Integer distinctionId) {
        this.distinctionId = distinctionId;
    }
}
