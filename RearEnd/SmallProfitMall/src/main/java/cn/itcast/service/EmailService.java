package cn.itcast.service;

import org.apache.ibatis.annotations.Param;

public interface EmailService {
//    //发送验证码邮箱方法
//    public int sendEmail(String email,String verification);


    /**
     * 绑定邮箱发送验证
     * @param email 需要绑定的邮箱
     * @param uId 用户id
     * @return
     */
    public Integer bindingEmail(String email,String uId,String key ) throws Exception;


    /**
     * 更新邮箱
     * @param userId 用户id
     * @param verification 验证码
     * @param email 需要更新为的邮箱
     * @return
     */
    public Integer updateEmail(String userId, String verification, String email,String key);

    /**
     * 更改邮箱验证
     * @param userId 用户id
     * @param verificationType 修改方式
     * @return
     */
    public String updateEmailPhone(String userId, String verificationType,String key) throws Exception;


    /**
     * 验证是否正确
     * @param verification 验证码
     * @param account 账号
     * @param userId 用户id
     * @param verificationType 修改方式
     * @param validationFunctions 验证种类
     * @return
     */
    public Integer verification(String verification, String account, String userId,
                                String verificationType, String validationFunctions,String key) throws Exception;








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
