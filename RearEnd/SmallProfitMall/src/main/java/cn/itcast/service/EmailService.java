package cn.itcast.service;

import org.apache.ibatis.annotations.Param;

public interface EmailService {
//    //发送验证码邮箱方法
//    public int sendEmail(String email,String verification);

    /**
     * 跟新新邮箱
     * @param uid 用户id
     * @param email 要绑定的邮箱
     * @return 是否成功
     */
    public int addEmail(String uid,String email);

    /**
     * 查询用户是否有邮箱
     * @param uid 用户id
     * @return 用户邮箱
     */
    public String fendByIdEmail(String uid);

    /**
     * 查询邮箱是否存在
     * @param email 需要验证的邮箱
     * @return
     */
    public String fendEmail(@Param("email")String email);
}
