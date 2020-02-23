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

    //.根据uid查询用户信息
    public User findByUid(String uid);


    // 保存帐户信息
    public void saveAccount(User user);

    //根据手机号码修改密码
    public void updatePasswordPhone (String phone,String password);

    //根据uid修改密码
    public void updatePasswordUid(String uid,String password);


}
