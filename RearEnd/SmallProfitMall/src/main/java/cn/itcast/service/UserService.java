package cn.itcast.service;

import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.User;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public interface UserService {

    /**
     * 查询所有账户
     * @return
     */
    public List<User> findAll();

    /**
     * 注册短信验证
     * @param phone 手机号(加密）
     * @return 验证结果
     */
    public Integer registerVerify(String phone) throws Exception;

    /**
     * 用户名查询用户
     * @param name
     * @return
     */
    public User findByName(String name);

    /**
     * 查询用户信息
     * @param phone
     * @return
     */
    public User findByPhone(String phone);

    /**
     * 查询用户信息
     * @param uid
     * @return
     */
    public User findByUid(String uid);

    /**
     * 查询用户信息
     * @param user
     * @return
     * @throws Exception
     */
    public User findAccount(User user) throws Exception;

    /**
     * 返回客户端信息
     * @param user
     * @return
     * @throws Exception
     */
    public Login findLogin(User user) throws Exception;

    /**
     * 保存帐户信息
     * @param user
     * @return
     */
    public Integer saveAccount(User user);

    /**
     * 根据手机号码修改密码
     * @param phone
     * @param password
     */
    public void updatePasswordPhone (String phone,String password);

    /**
     * 修改用户头像
     * @param Images
     * @param uid
     * @return
     * @throws IOException
     */
    public String updatePortrait(InputStream Images, String uid) throws IOException;

    /**
     * 查询用户信息
     * @param uid
     * @return
     * @throws Exception
     */
    public User findByIdInformation(String uid) throws Exception;

    /**
     * 跟新用户信息用户信息
     * @param user
     * @return
     */
    public int updateInformation( User user);

    /**
     * 根据id查询手机号码
     * @param uid
     * @return
     */
    public String findByIdPhone(String uid);

    /**
     * 根据id修改手机号码
     * @param Phone
     * @param uid
     * @return
     */
    public int updatePhone( String Phone,String uid);


}
