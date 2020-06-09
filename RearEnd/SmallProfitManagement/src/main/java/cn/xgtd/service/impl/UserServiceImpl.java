package cn.xgtd.service.impl;

import cn.xgtd.dao.RoleDao;
import cn.xgtd.dao.UserDao;
import cn.xgtd.domain.user.Role;
import cn.xgtd.domain.user.User;
import cn.xgtd.response.list.QueryResponseResult;
import cn.xgtd.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 用户业务层
 * @author Kite
 * @date 2020/5/31
 */
@Slf4j
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Autowired
    RoleDao roleDao;

    /**
     * 创建用户
     * @param user
     * @return 新创建的用户
     */
    @Override
    public User addUser(User user) {
        Integer quantity = userDao.findUserRepeat(user.getUserName(),user.getuId());
        if (quantity>0){
            return null;
        }
        user.setCreateTime(new Date());
        user.setLastTime(new Date());
        user.setLastAuthorId(user.getCreateAuthorId());
        user.setLastAuthorId(user.getCreateAuthorId());
        //新增用户
        userDao.addUser(user);
        //添加角色关系
        roleDao.addRoleRelationship(user.getCreateAuthorId(),user.getuId());
        User users = userDao.findUser(user.getuId());
        Role role = updateRole(users.getRole());
        users.setRole(role);
        return  users;
    }


    /**
     * 用户登录
     * @param userName
     * @param password
     * @return
     */
    @Override
    public User userLogin(String userName,String password) {
        String userPassword = userDao.findPassword(userName);
        if (userPassword!=null && password.equals(userPassword)){
            User responseUser = userDao.findUserRole(userName);
            Role role = updateRole(responseUser.getRole());
            responseUser.setRole(role);
            return responseUser;
        }
        return null;
    }

    /**
     * 查询创建的用户及子用户
     * @param uId 用户id
     * @return
     */
    @Override
    public List<User> findUserList(Integer uId) {
        List<User> users = userDao.findUserList(uId);
        for (int i = 0; i < users.size(); i++) {
            if (users.get(i).getRole() != null) {
                users.get(i).setRole(updateRole(users.get(i).getRole()));
            }
    }
        return users;
    }


    /**
     * 删除用户
     * @param userId 用户id
     * @return
     */
    @Override
    public Integer deleteUser(Integer userId) {
        Integer result = userDao.deleteUser(userId,null);
        return result;
    }

    /**
     * 修改对象
     * @param user 用户对象
     * @return
     */
    @Override
    public User updateUser(User user) {

        Integer quantity = userDao.findUserRepeat(user.getUserName(),user.getuId());
        if (quantity>0){
            return null;
        }
        user.setLastTime(new Date());
        userDao.updateUser(user);

        User users = userDao.findUser(user.getuId());
        Role role = updateRole(users.getRole());
        users.setRole(role);


        return users;
    }

    /**
     * 搜索用户
     * @param content 搜索内容
     * @param laterTime 什么时间之前
     * @param beforeTime 什么时间之后
     * @return
     */
    @Override
    public List<User> findUserSearch(String content, Date laterTime, Date beforeTime) {
        List<User> users = userDao.findUserSearch(content,laterTime,beforeTime);
        for (int i = 0; i < users.size(); i++) {
            if (users.get(i).getRole() != null) {
                users.get(i).setRole(updateRole(users.get(i).getRole()));
            }
        }
        return users;
    }


    /**
     * 修改角色权限格式
     * @param role
     * @return
     */
    public Role updateRole(Role role){
        if (role.getDatabaseMenus()==null){
            String [] menus= {};
            role.setMenus(menus);
        }else {
            String[] menus = role.getDatabaseMenus().split(",");
            role.setDatabaseMenus(null);
            role.setMenus(menus);
        }

        if (role.getRoleBasicsId()!=null){
            String[] roleIds = role.getRoleBasicsId().split(",");
            role.setRoleIds(roleIds);
        }
        return role;
    }

}
