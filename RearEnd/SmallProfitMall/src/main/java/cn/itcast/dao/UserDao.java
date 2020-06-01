package cn.itcast.dao;

import cn.itcast.domain.user.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 帐户dao接口
 */
@Repository
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
    public Integer findByName(@Param("name") String name);


    /**
     * 查询该用户名除自身数量
     * @param name
     * @param userId
     * @return
     */
    public Integer findNameQuantity(@Param("name") String name , @Param("userId") String userId);

    /**
     * 查询用户是否存在
     * @param phone  手机号
     * @return 查询结果数量
     */
    public Integer findByPhone(String phone);

    /**
     * 查询用户密码
     * @param account 账户
     * @param accountType 账户类型  1为账号 2为手机号
     * @return 用户密码
     */
    public String fendUserPassword(@Param("account") String account,@Param("accountType")Integer accountType);

    /**
     * 查询用户信息
     * @param account 账户
     * @param accountType 账户类型 1为账户 2为手机
     * @return
     */
    public User fendUser(@Param("account")String account,@Param("accountType")Integer accountType);

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
     * 查询用户名
     * @param userId 用户id
     * @return
     */
    public String findUserName(String userId);

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
