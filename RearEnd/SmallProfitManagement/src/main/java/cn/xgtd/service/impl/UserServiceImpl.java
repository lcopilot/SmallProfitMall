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
        Integer quantity = userDao.findUserRepeat(user.getUserName());
        if (quantity>0){
            return null;
        }
        user.setCreateTime(new Date());
        //新增用户
        userDao.addUser(user);
        //添加角色关系
        roleDao.addRoleRelationship(user.getCreatorId(),user.getuId());
        return  userDao.findUser(user.getuId());
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
        if (password.equals(userPassword)){
            User responseUser = userDao.findUserRole(userName);
            Role role = responseUser.getRole();
            if (role.getDatabaseMenus()==null){
                String [] menus= {};
                role.setMenus(menus);
            }else {
                String[] menus = role.getDatabaseMenus().split(",");
                role.setDatabaseMenus(null);
                role.setMenus(menus);
                responseUser.setRole(role);
            }
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
                String[] menus = users.get(i).getRole().getDatabaseMenus().split(",");
                users.get(i).getRole().setDatabaseMenus(null);
                users.get(i).getRole().setMenus(menus);
            }
    }
        return users;
    }


//    /**
//     * 删除用户
//     * @param userId 用户id
//     * @return
//     */
//    @Override
//    public Integer deleteUser(Integer userId) {
//        return null;
//    }
//
//    /**
//     * 修改对象
//     * @param user 用户对象
//     * @return
//     */
//    @Override
//    public Integer updateUser(User user) {
//        Integer quantity = userDao.findUserRepeat(user.getUserName());
//        if (quantity>0){
//            return null;
//        }
//        user.setLastTime(new Date());
//        return userDao.updateUser(user);
//    }

}
