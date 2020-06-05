package cn.xgtd.service;

import cn.xgtd.domain.user.User;
import cn.xgtd.response.list.QueryResponseResult;

import java.util.List;

/**
 * 用户业务层接口
 * @author Kite
 * @date 2020/5/31
 */
public interface UserService {

    /**
     * 管理用户登录
     * @param userName 用户账户
     * @param password 用户密码
     * @return
     */
    public User userLogin(String userName,String password);

    /**
     * 创建用户
     * @param user
     * @return
     */
    public QueryResponseResult addUser(User user);

}
