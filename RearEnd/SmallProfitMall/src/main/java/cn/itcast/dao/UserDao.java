package cn.itcast.dao;

import cn.itcast.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 帐户dao接口
 */
@Repository
public interface UserDao {

    // 查询所有账户
    @Select("select * from user")
    public List<User> findAll();

    // 保存帐户信息
    @Insert("insert into user (name,password) values (#{name},#{password})")
    public void saveAccount(User user);

}
