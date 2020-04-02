package cn.itcast.service;

import cn.itcast.domain.accountSettings.AccountSettings;
import org.apache.ibatis.annotations.Param;

/**
 * 用户账户设置
 * @author Kite
 * @date 2020/4/1
 */
public interface AccountSettingsService {
    /**
     * 修改支付密码
     * @param userId 用户id
     * @param paymentPassword   新新支付密码
     * @return 结果 1代表成功
     */
    public Integer updatePaymentPassword(String userId ,String paymentPassword);

    /**
     * 修改人脸
     * @param userId
     * @param faceRecognition
     * @return
     */
    public Integer updateFaceRecognition(String userId ,String faceToken, Integer faceRecognition);

    /**
     * 查询用户账户设置
     * @param userId 用户id
     * @return 用户账户设置信息
     */
    public AccountSettings findAccountSettings(String userId );

    /**
     * 修改登录密码
     * @param userId 用户id
     * @param password 修改的新密码
     * @return 是否成功 1 代表成功
     */
    public Integer updatePassword(String userId ,String password);
}
