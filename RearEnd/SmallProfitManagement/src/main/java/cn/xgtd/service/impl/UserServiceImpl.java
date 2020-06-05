package cn.xgtd.service.impl;

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

    /**
     * 创建用户
     * @param user
     * @return
     */
    @Override
    public Integer addUser(User user) {
        Integer quantity = userDao.findUserRepeat(user.getUserName());
        if (quantity>0){
            return 10002;
        }
        user.setCreateTime(new Date());
        Integer result = userDao.addUser(user);
        return result;
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
            if (role!=null){
                String[] menus = role.getDatabaseMenus().split(",");
                role.setDatabaseMenus(null);
                role.setMenus(menus);
            }
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
    public List<User> findUser(Integer uId) {
        List<User> users = userDao.findUser(uId);
        for (int i = 0; i < users.size(); i++) {
            if (users.get(i).getRole() != null) {
                String[] menus = users.get(i).getRole().getDatabaseMenus().split(",");
                users.get(i).getRole().setDatabaseMenus(null);
                users.get(i).getRole().setMenus(menus);
            }
    }
        return users;
    }
}
