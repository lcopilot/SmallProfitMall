package cn.itcast.service.impl;

import cn.itcast.dao.AccountSettingsDao;
import cn.itcast.domain.accountSettings.AccountSettings;
import cn.itcast.service.AccountSettingsService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 用户账户设置
 * @author Kite
 * @date 2020/4/1
 */
@Service
@Transactional
public class AccountSettingsServiceImpl implements AccountSettingsService {

    @Autowired
    AccountSettingsDao accountSettingsDao;

    /**
     * 修改用户密码
     * @param userId 用户id
     * @param paymentPassword   新新支付密码
     * @return 修改是否成功
     */
    @Override
    public Integer updatePaymentPassword(String userId, String paymentPassword) {
        return accountSettingsDao.updatePaymentPassword(userId,paymentPassword);
    }

    /**
     *  修改人脸状态
     * @param userId
     * @param faceRecognition
     * @return
     */
    @Override
    public Integer updateFaceRecognition(String userId ,String faceToken, Integer faceRecognition) {
        return accountSettingsDao.updateFaceRecognition(userId,faceToken,faceRecognition);
    }


    /**
     * 查询用户信息
     * @param userId 用户id
     * @return 用户设置信息
     */
    @Override
    public AccountSettings findAccountSettings(String userId) {
       AccountSettings accountSettings = accountSettingsDao.findAccountSettings(userId);
        String paymentPassword = accountSettings.getPaymentPassword();
        //判断支付密码是否设置
        if (paymentPassword == null || paymentPassword.equals("")) {
            accountSettings.setPaymentPasswordExists(false);
        }else {
            accountSettings.setPaymentPasswordExists(true);
        }
        accountSettings.setPaymentPassword(null);
        accountSettings.setFaceToken(null);
        return accountSettings;
    }

    /**
     * 修改用户登录密码
     * @param userId 用户id
     * @param password  用户新密码
     * @return 是否成功 1 则代表成功
     */
    @Override
    public Integer updatePassword(String userId , String password) {
        return accountSettingsDao.updatePassword(userId,password);
    }
}
