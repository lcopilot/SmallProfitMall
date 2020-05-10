package cn.itcast.domain.member;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/3/30
 */
public class Member implements Serializable {
    //用户余额
    private String balance;
    //用户id
    private String userId;
    //会员积分
    private Integer integral;
    //优惠券数量
    private Integer coupon;
    //会员卡数量
    private Integer membershipCard;
    //会员成长值
    private Integer growthValue;

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public Integer getCoupon() {
        return coupon;
    }

    public void setCoupon(Integer coupon) {
        this.coupon = coupon;
    }

    public Integer getMembershipCard() {
        return membershipCard;
    }

    public void setMembershipCard(Integer membershipCard) {
        this.membershipCard = membershipCard;
    }

    public Integer getGrowthValue() {
        return growthValue;
    }

    public void setGrowthValue(Integer growthValue) {
        this.growthValue = growthValue;
    }
}
