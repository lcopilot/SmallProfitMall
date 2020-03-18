package cn.itcast.service;

import org.apache.ibatis.annotations.Param;

public interface EmailService {
    //发送验证码邮箱方法
    public int sendEmail(String email,String verification);
    //跟新邮箱
    public int addEmail(String uid,String email);
    //查询是否有邮箱
    public String fendByIdEmail(String uid);
}
