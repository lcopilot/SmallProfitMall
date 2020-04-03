package cn.itcast.dao;

import cn.itcast.domain.user.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 帐户dao接口
 */
public interface UserDao {
    /**
     * 查询所有账户
     * @return
     */
    public List<User> findAll();

    /**
     * 查询用户信息
     * @param name  用户名
     * @return 用户对象
     */
    public User findByName(String name);

    /**
     * 查询用户信息
     * @param phone  手机号
     * @return 用户id
     */
    public User findByPhone(String phone);

    /**
     * 查询用户信息
     * @param uid 用户id
     * @return
     */
    public User findByUid(String uid);

    /**
     * 注册帐户
     * @param user 用户对象
     * @return 是否成功
     */
    public Integer saveAccount(User user);

    /**
     * 修改密码
     * @param phone 手机号码
     * @param password 新密码
     */
    public void updatePasswordPhone(@Param("phone") String phone, @Param("password") String password);

    /**
     * 修改用户头像
     * @param Image 用户头像
     * @param uid 用户id
     */
    public void updatePortrait(@Param("Image") String Image,@Param("uid") String uid);

    /**
     * 用户个人资料信息
     * @param uid 用户id
     * @return 用户对象
     */
    public User findByIdInformation(@Param("uid") String uid);

    /**
     * 修改用户资料
     * @param user 用户对象
     * @return 是否成功
     */
    public int updateInformation(@Param("user") User user);

    /**
     * 查询手机号码
     * @param uid 用户id
     * @return
     */
    public String findByIdPhone(@Param("uid") String uid);

    /**
     * 修改手机号码
     * @param phone 手机号
     * @param uid 用户id
     * @return
     */
    public int updatePhone(@Param("phone") String phone,@Param("uid") String uid);
}
