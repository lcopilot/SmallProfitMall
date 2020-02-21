package cn.itcast.dao;

import cn.itcast.domain.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 帐户dao接口
 */
@Repository
public interface UserDao {


    // 查询所有账户
    @Select(" select * from user")
    public List<User> findAll();


    //.根据用户名查询用户信息
    @Select(" select * from user where name = #{name}")
    public User findByName(String name);


    //.根据用户手机查询用户信息
    @Select("select * from user where  phone = #{phone}")
    public User findByPhone(String phone);


    // 保存帐户信息
    public void saveAccount(User user);

}
