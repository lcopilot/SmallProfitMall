package cn.itcast.domain.address;

import java.io.Serializable;

public class Address implements Serializable {
    private String uid;//用户id
    private String area;//区域
    private String detailedAddress;//详细地址
    private String name;    //收货人名字
    private String phone;   //收货人手机
    private String email;   //收货人邮箱
    private String addressHtml;//区域Html代码
}
