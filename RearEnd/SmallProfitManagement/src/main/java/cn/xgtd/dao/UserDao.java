package cn.xgtd.dao;

import cn.xgtd.domain.user.Role;
import cn.xgtd.domain.user.User;
import cn.xgtd.response.list.QueryResponseResult;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 *
 * @author Kite
 * @date 2020/5/31
 */
@Repository
public interface UserDao {

    /**
     * 查询用户密码
     * @param userName 用户账户
     * @return 用户密码
     */
    public String findPassword(String userName);

    /**
     * 查询用户及用户角色
     * @param userName
     * @return
     */
    public User findUserRole(String userName);


    public QueryResponseResult addUser(User user);

}
