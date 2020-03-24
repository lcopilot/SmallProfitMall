package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.User;
import cn.itcast.service.UserService;

import cn.itcast.util.compressPicture.UploadPicturesUtil;
import cn.itcast.util.encryption.AesEncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    private User users;


    @Autowired
    private Login login;

    //查询所有用户
    public List<User> findAll() {
        return UserDao.findAll();
    }

    //根据用户名查询用户信息
    @Override
    public User findByName(String name) {
        return UserDao.findByName(name);
    }

    //根据用户手机查询用 户信息
    @Override
    public User findByPhone(String phone) {
        return UserDao.findByPhone(phone);
    }

    //.根据uid查询用户信息
    @Override
    public User findByUid(String uid) {
        return UserDao.findByUid(uid);
    }

    //根据传入的账户查询信息查询
    @Override
    public User findAccount(User user) throws Exception {
        String Account=AesEncryptUtil.encrypt(user.getName());
        if (user.getName().length()==11){
           users = this.findByPhone(Account);    //根据手机号查
          if (users==null){
            users = this.findByName(user.getName());
          }
        }else {
            users = this.findByName(user.getName());
        }
        return users;
    }

    //查询返回值
    public Login findLogin(User user) throws Exception {
        login.setUid(user.getUid());
        login.setImage(user.getImage());
        login.setToken(user.getToken());
        login.setName(user.getName());
        return login;
    }

    //保存用户
    public void saveAccount(User user) {
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        user.setUid(uuid);
        user.setName("smallProfit");
        user.setToken("DM");
        user.setBirthday("0-0-0");
        user.setImage("http://img.fhxasdsada.xyz//000000001312c10c0000000002255f0a?t=1578145613938");
        user.setSex("1");
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
        if(users.getEmail()!=null){
            users.setEmail(concealEmail(users.getEmail()));
        }
        //解密邮箱
        String emails=AesEncryptUtil.desEncrypt(users.getEmail());
        if (emails!=null){
           List birthday = Arrays.asList(emails.split("-"));
            users.setBirthdays(birthday);
        }
        return users;
    }

    @Override
    public int updateInformation(User user) {
        return UserDao.updateInformation(user);
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
