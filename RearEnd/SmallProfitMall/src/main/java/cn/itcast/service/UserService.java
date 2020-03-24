package cn.itcast.service;

import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.User;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public interface UserService {

    // 查询所有账户
    public List<User> findAll();

    //.根据用户名查询用户
    public User findByName(String name);

    //.根据用户手机查询用户信息
    public User findByPhone(String phone);

    //.根据uid查询用户信息
    public User findByUid(String uid);

    //更具account查询用户信息
    public User findAccount(User user);

    //返回客户端信息
    public Login findLogin(User user);

    // 保存帐户信息
    public void saveAccount(User user);

    //根据手机号码修改密码
    public void updatePasswordPhone (String phone,String password);

    //根据uid修改密码
    public void updatePasswordUid(String uid,String password);

    //根据uid修改用户头像
    public String updatePortrait(InputStream Images, String uid) throws IOException;

    //根据uid查询用户信息
    public User findByIdInformation(String uid);

    //传入用户对象修改用户信息
    public int updateInformation( User user);

    //根据id查询手机号码
    public String findByIdPhone(String uid);

    //根据id修改手机号码
    public int updatePhone( String Phone,String uid);


}
