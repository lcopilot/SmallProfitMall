package cn.itcast.dao;

import cn.itcast.domain.accountSettings.AccountSettings;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * 账户设置
 * @author Kite
 * @date 2020/4/1
 */
@Repository
public interface AccountSettingsDao {
    /**
     * 修改支付密码
     * @param userId 用户id
     * @param paymentPassword   新新支付密码
     * @return 结果 1代表成功
     */
    public Integer updatePaymentPassword(@Param("userId")String userId ,@Param("paymentPassword") String paymentPassword);

    /**
     * 修改人脸
     * @param userId
     * @param faceRecognition
     * @return
     */
    public Integer updateFaceRecognition(@Param("userId")String userId,@Param("faceToken")String faceToken,@Param("faceRecognition") Integer faceRecognition);

    /**
     * 查询用户账户设置
     * @param userId 用户id
     * @return 用户账户设置信息
     */
    public AccountSettings findAccountSettings(@Param("userId")String userId );

    /**
     * setAccount
     * @param userId
     * @return
     */

    /**
     * 修改用户登录密码
     * @param userId 用户id
     * @param password 用户新密码
     * @return 是否成功 1代表成功
     */
    public Integer updatePassword(@Param("userId")String userId,@Param("password")String password);

    /**
     * 用户注册新增
     * @param userId 用户id
     * @return 新增结果
     */
    public Integer addUser(@Param("userId")String userId);
}
