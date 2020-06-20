package cn.xgtd.dao;

import cn.xgtd.domain.user.Role;
import cn.xgtd.domain.user.User;
import cn.xgtd.response.list.QueryResponseResult;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

/**
 *用户持久层
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


    /**
     * 查询角色绑定的用户
     * @param rId 角色id
     * @return 用户名
     */
    public List<String> findRoleBinding(Integer rId);
    /**
     * 查询用户名是否重复
     * @param userName 需要创建的用户名
     * @return
     */
    public Integer findUserRepeat(@Param("userName") String userName,@Param("userId") Integer userId);


    /**
     * 创建用户
     * @param user 用户对象
     * @return
     */
    public Integer addUser(User user);

    /**
     * 修改角色关系
     * @param uId 用户id
     * @param rId 角色id
     * @return
     */
    public Integer updateRoleRelationship(@Param("uId") Integer uId ,@Param("rId") Integer rId);


    /**
     * 查询创建的用户以及子用户
     * @param uId 用户id
     * @return
     */
    public List<User> findUserList(Integer uId);

    /**
     * 查询指定用户
     * @param uId 用户id
     * @return
     */
    public User findUser(Integer uId);


    /**
     * 删除用户
     * @param userId 用户id
     * @param rId 角色id
     * @return
     */
    public Integer deleteUser(@Param("userId") Integer userId,@Param("rId") Integer rId);

    /**
     * 修改用户
     * @param user 用户对象
     * @return
     */
    public Integer updateUser(User user);

    /**
     * 查询用户
     * @param content 搜索内容
     * @param laterTime 什么时间之前
     * @param beforeTime 什么时间之后
     * @return
     */
    public List<User> findUserSearch(@Param("content") String content, @Param("laterTime") String laterTime , @Param("beforeTime")String beforeTime);

}
