package cn.itcast.service;

import org.apache.ibatis.annotations.Param;

public interface EmailService {
//    //发送验证码邮箱方法
//    public int sendEmail(String email,String verification);
    //跟新邮箱
    public int addEmail(String uid,String email);
    //查询用户是否有邮箱
    public String fendByIdEmail(String uid);
    //查询邮箱是否存在
    public String fendEmail(@Param("email")String email);
}
