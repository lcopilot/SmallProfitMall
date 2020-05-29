package cn.itcast.service;

import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.User;

import javax.servlet.http.HttpServletRequest;
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
     * 用户登录
     * @param user 用户对象
     * @return 登录需要的信息
     */
    public Integer accountLogin(User user , HttpServletRequest request) throws Exception;

    /**
     * 注册短信验证
     * @param phone 手机号(加密）
     * @return 验证结果
     */
    public Integer registerVerify(String phone) throws Exception;


    /**
     * 登录成功 返回客户端信息
     * @param account 账户
     * @param accountType 账号类型 1为账号 2为手机
     * @return
     * @throws Exception
     */
    public Login findReturnLogin(String account , Integer accountType) throws Exception;


    /**
     * 推送消息数量
     * @param userId
     */
    public void pushNews(String userId) throws IOException;

    /**
     * 保存帐户信息
     * @param user
     * @return
     */
    public Integer saveAccount(User user);

    /**
     * 修改密码发送短信 , 验证原手机号发送短信
     * @param phone
     * @return
     */
    public Integer smVerify(String phone,String type) throws Exception;

    /**
     * 修改密码
     * @param user 用户对象
     * @return
     */
    public Integer updatePasswordPhone (User user) throws Exception;

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
     * 查询手机号码
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
