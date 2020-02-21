package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao UserDao;

    //查询所有用户
    public List<User> findAll() {
        System.out.println("业务层：查询所有用户...");
        return UserDao.findAll();
    }

    //根据用户名查询用户信息
    @Override
    public User findByName(String name) {
        System.out.println("业务层：更具用户名查询用户信息...");
        return UserDao.findByName(name);
    }

    //根据用户手机查询用户信息
    @Override
    public User findByPhone(String phone) {
        return UserDao.findByPhone(phone);
    }

    //保存用户
    public void saveAccount(User user) {
        System.out.println("业务层：保存用户...");
        UserDao.saveAccount(user);
    }



}
