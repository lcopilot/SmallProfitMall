package cn.itcast.service.impl;

import cn.itcast.dao.AccountSettingsDao;
import cn.itcast.dao.MemberDao;
import cn.itcast.dao.UserDao;
import cn.itcast.domain.accountSettings.AccountSettings;
import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.User;
import cn.itcast.service.UserService;

import cn.itcast.util.compressPicture.UploadPicturesUtil;
import cn.itcast.util.encryption.AesEncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao UserDao;

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private AccountSettingsDao accountSettingsDao;

    /**
     * 查询所有用户
     * @return
     */
    @Override
    public List<User> findAll() {
        return UserDao.findAll();
    }

    /**
     * 查询用户信息
     * @param name 用户名
     * @return 用户对象
     */
    @Override
    public User findByName(String name) {
        return UserDao.findByName(name);
    }

    /**
     * 查询用户信息
     * @param phone 手机号
     * @return 用户对象
     */
    @Override
    public User findByPhone(String phone) {
        return UserDao.findByPhone(phone);
    }

    /**
     *  查询用户对象
     * @param uid 用户id
     * @return 用户对象
     */
    @Override
    public User findByUid(String uid) {
        return UserDao.findByUid(uid);
    }

    //根据传入的账户查询信息查询
    @Override
    public User findAccount(User user) throws Exception {
         User users = new User();
        String Account=AesEncryptUtil.encrypt(user.getName());
        if (user.getName().length()==11){
            //根据手机号查
           users = this.findByPhone(Account);
          if (users==null){
            users = this.findByName(user.getName());
          }
        }else {
            users = this.findByName(user.getName());
        }
        return users;
    }

    /**
     * 查询返回值
     * @param user 用户对象
     * @return
     * @throws Exception
     */
    @Override
    public Login findLogin(User user) throws Exception {
        Login login = new Login();
        login.setUid(user.getUid());
        login.setImage(user.getImage());
        login.setToken(user.getToken());
        login.setName(user.getName());
        return login;
    }

    /**
     * 用户注册
     * @param user
     */
    @Override
    public Integer saveAccount(User user) {
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        user.setUid(uuid);
        user.setName("smallProfit");
        user.setToken("DM");
        user.setBirthday("0-0-0");
        user.setImage("http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938");
        user.setSex("1");
        Integer result = 0;
        result = result +  UserDao.saveAccount(user);
        result = result +accountSettingsDao.addUser(uuid);
        result = result + memberDao.addUser(uuid);
        return result;
    }

    //根据手机号码修改密码
    @Override
    public void updatePasswordPhone(String phone,String password) {
        UserDao.updatePasswordPhone(phone,password);
    }



    //根据uid修改用户头像
    @Override
    public String updatePortrait(InputStream Images, String uid) throws IOException {
        String Image = UploadPicturesUtil.UploadPicturesUtil(Images,uid);
        UserDao.updatePortrait(Image,uid);
        return Image;
    }

    //根据uid查询用户个人信息
    @Override
    public User findByIdInformation(String uid) throws Exception {
        User users=UserDao.findByIdInformation(uid);
        //解密手机号
        String phone=AesEncryptUtil.desEncrypt(users.getPhone());
        users.setPhone(concealPhone(phone));
        if (users.getEmail()!=null){
            System.out.println(users.getEmail());
            String emailes=users.getEmail();
            String email = AesEncryptUtil.desEncrypt(users.getEmail());
             users.setEmail(concealEmail(email));
        }
        //解密邮箱

        if (users.getBirthday()!=null){
           List birthday = Arrays.asList(users.getBirthday().split("-"));
            users.setBirthdays(birthday);
        }
        return users;
    }

    /**
     * 修改个人信息
     * @param user
     * @return 返回1代表全部成功 返回2代表部分修改成功
     */
    @Override
    public int updateInformation(User user) {
        int redis=0;
        if(UserDao.findByName(user.getName())!=null){
            User users = UserDao.findByIdInformation(user.getUid());
            user.setName(users.getName());
            redis=1;
        }
        redis =redis + UserDao.updateInformation(user);
        return redis;
    }

    @Override
    public String findByIdPhone(String uid) {
        return UserDao.findByIdPhone(uid);
    }

    @Override
    public int updatePhone(String phone, String uid) {
         return UserDao.updatePhone(phone,uid);
    }




    //隐藏手机号
    private String concealPhone(String Phone){
        String phoneNumber = Phone;
        String resultPhone= phoneNumber.replaceAll("(\\d{3})\\d{4}(\\d{4})","$1****$2");
        return resultPhone;
    }

    //隐藏邮箱
    private String concealEmail(String Email){
        String email = Email;
        String resultEmail = email.replaceAll("(\\w?)(\\w+)(\\w)(@\\w+\\.[a-z]+(\\.[a-z]+)?)", "$1****$3$4");
        return resultEmail;
    }

}
