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


    // 查询所有账户
    public List<User> findAll();


    //.根据用户名查询用户信息
    public User findByName(String name);


    //.根据用户手机查询用户信息
    public User findByPhone(String phone);

    //.根据uid查询用户信息
    public User findByUid(String uid);


    // 保存帐户信息
    public void saveAccount(User user);

    //根据手机号码修改密码
    public void updatePasswordPhone(@Param("phone") String phone, @Param("password") String password);

    //根据uid修改密码
    public void updatePasswordUid(@Param("uid") String uid,@Param("password") String password);
}
