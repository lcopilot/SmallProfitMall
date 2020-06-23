package cn.xgtd.domain.order;

import java.io.Serializable;

/**
 * 订单地址
 * @author Kite
 * @date 2020/6/24
 */
public class OrderAddress implements Serializable {
    /**用户id**/
    private String userId;
    /**订单id**/
    private String orderId;
    /**收货人名称**/
    private String name;
    /**地区**/
    private String areas;
    /**具体地址**/
    private String detailedAddress;
    /**手机号码**/
    private String phone;
    /**邮箱**/
    private String email;
    /**区号**/
    private String areaCodes;
    /**地址别名**/
    private String alias;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAreas() {
        return areas;
    }

    public void setAreas(String areas) {
        this.areas = areas;
    }

    public String getDetailedAddress() {
        return detailedAddress;
    }

    public void setDetailedAddress(String detailedAddress) {
        this.detailedAddress = detailedAddress;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAreaCodes() {
        return areaCodes;
    }

    public void setAreaCodes(String areaCodes) {
        this.areaCodes = areaCodes;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }
}
