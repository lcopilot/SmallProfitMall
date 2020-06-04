package cn.xgtd.service.impl;

import cn.xgtd.dao.UserDao;
import cn.xgtd.domain.user.User;
import cn.xgtd.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
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
            log.info("用户登录:"+responseUser.getUserName());

            return responseUser;
        }
        return null;
    }

}
