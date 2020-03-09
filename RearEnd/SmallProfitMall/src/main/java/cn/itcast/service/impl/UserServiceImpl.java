package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.user.User;
import cn.itcast.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao UserDao;

    //查询所有用户
    public List<User> findAll() {
        return UserDao.findAll();
    }

    //根据用户名查询用户信息
    @Override
    public User findByName(String name) {
        return UserDao.findByName(name);
    }

    //根据用户手机查询用户信息
    @Override
    public User findByPhone(String phone) {
        return UserDao.findByPhone(phone);
    }

    //.根据uid查询用户信息
    @Override
    public User findByUid(String uid) {
        return UserDao.findByUid(uid);
    }

    //保存用户
    public void saveAccount(User user) {
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        user.setUid(uuid);
        user.setName(" System.out.println");
        user.setToken("DM");
        user.setImage("http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938");
        user.setSex("男");
        UserDao.saveAccount(user);
    }

    //根据手机号码修改密码
    @Override
    public void updatePasswordPhone(String phone,String password) {
        UserDao.updatePasswordPhone(phone,password);
    }

    //根据uid修改密码
    @Override
    public void updatePasswordUid(String uid,String password) {
        UserDao.updatePasswordUid(uid,password);
    }

}
