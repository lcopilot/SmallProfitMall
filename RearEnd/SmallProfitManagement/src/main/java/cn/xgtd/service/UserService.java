package cn.xgtd.service;

import cn.xgtd.domain.user.User;
import cn.xgtd.response.list.QueryResponseResult;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 用户业务层接口
 * @author Kite
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
     * 查询创建的用户以及子用户
     * @param uId 用户id
     * @return
     */
    public List<User> findUserList(Integer uId);



    /**
     * 创建用户
     * @param user
     * @return
     */
    public User addUser(User user);

    /**
     * 删除用户
     * @param userId 用户id
     * @return
     */
    public Integer deleteUser(Integer userId);

    /**
     * 修改用户
     * @param user 用户对象
     * @return
     */
    public User updateUser(User user);


    /**
     * 查询用户
     * @param content 搜索内容
     * @param laterTime 什么时间之前
     * @param beforeTime 什么时间之后
     * @return
     */
    public List<User> findUserSearch(String content,  String laterTime , String beforeTime);


}
