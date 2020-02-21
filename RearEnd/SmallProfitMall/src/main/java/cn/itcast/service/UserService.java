package cn.itcast.service;

import cn.itcast.domain.User;

import java.util.List;

public interface UserService {

    // 查询所有账户
    public List<User> findAll();

    //.根据用户名查询用户
    public User findByName(String string);

    //.根据用户手机查询用户信息
    public User findByPhone(String phone);

    // 保存帐户信息
    public void saveAccount(User user);




}
