package cn.itcast.dao;

import cn.itcast.domain.user.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 帐户dao接口
 */
public interface UserDao {
    // 查询所有账户
    public List<User> findAll();

    //.根据用户名查询用户信息
    public User findByName(String name);

    //.根据用户手机查询用户信息
    public User findByPhone(String phone);

    //.根据uid查询用户信息
    public User findByUid(String uid);

    // 保存帐户信息
    public Integer saveAccount(User user);

    //根据手机号码修改密码
    public void updatePasswordPhone(@Param("phone") String phone, @Param("password") String password);

    //根据uid修改用户头像
    public void updatePortrait(@Param("Image") String Image,@Param("uid") String uid);
    //根据uid查询用户个人资料信息
    public User findByIdInformation(@Param("uid") String uid);

    //根据id修改用户资料
    public int updateInformation(@Param("user") User user);

    //根据id查询手机号码
    public String findByIdPhone(@Param("uid") String uid);

    //根据id修改手机号码
    public int updatePhone(@Param("phone") String phone,@Param("uid") String uid);
}
