package cn.itcast.domain.address;

import java.io.Serializable;

/**
 *地址
 */
public class Address implements Serializable {
    //地址id
    private int addressId;
    //用户id
    private String userId;
    //详细地址
    private String detailedAddress;
    //收货人名字
    private String name;
    //收货人手机
    private String phone;
    //收货人邮箱
    private String email;
    //默认地址
    private Boolean defaults;
    //区域
    private String areas;
    // 接收的区域代码
    private String[] areaCode;
    //存数据库的区域代码
    private String areaCodes;
    //备注地点
    private String alias;

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDetailedAddress() {
        return detailedAddress;
    }

    public void setDetailedAddress(String detailedAddress) {
        this.detailedAddress = detailedAddress;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public Boolean getDefaults() {
        return defaults;
    }

    public void setDefaults(Boolean defaults) {
        this.defaults = defaults;
    }

    public String getAreas() {
        return areas;
    }

    public void setAreas(String areas) {
        this.areas = areas;
    }

    public String[] getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String[] areaCode) {
        this.areaCode = areaCode;
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
