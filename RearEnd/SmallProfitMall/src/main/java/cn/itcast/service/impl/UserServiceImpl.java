package cn.itcast.service.impl;

import cn.itcast.dao.AccountSettingsDao;
import cn.itcast.dao.MemberDao;
import cn.itcast.dao.NewsDao;
import cn.itcast.dao.UserDao;
import cn.itcast.domain.news.News;
import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.User;
import cn.itcast.service.NewsService;
import cn.itcast.service.UserService;
import cn.itcast.util.compressPicture.UploadPicturesUtil;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.logic.GetFourRandom;
import cn.itcast.util.redis.RedisUtil;
import cn.itcast.util.user.SmsUtils;
import cn.itcast.util.verify.IPUtil;
import cn.itcast.util.verify.TCaptchaVerify;
import lombok.SneakyThrows;
import org.apache.commons.mail.Email;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@Service
public class UserServiceImpl implements UserService {

    //七牛云存储空间名称
    private static final  String space="mugebl";

    /**用户持久层**/
    @Autowired
    private UserDao userDao;

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private AccountSettingsDao accountSettingsDao;

    /**消息持久层**/
    @Autowired
    private NewsDao newsDao;

    /**推送消息**/
    @Autowired
    NewsService newsService;

    /**注入缓存工具类**/
    @Autowired
    private RedisUtil redisUtil;

    /**用户初始账户名**/
    public static final String USER_NAME="smallProfit";
    /**
     * 查询所有用户
     * @return
     */
    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    /**
     * 注册短信验证
     * @param phone 手机号(加密）
     * @return 验证结果 1为成功 2为手机号不正确 3为发送短信失败 4为手机号已注册
     */
    @Override
    public Integer registerVerify(String phone) throws Exception {
        Integer result=0;
        //手机号解密
        String phones = AesEncryptUtil.desEncrypt(phone);
        //判断手机号是否正确
        if (phones.length() != 11) {
            return  result=2;
        }
        //查询该用户是否存在
        Integer user_phone =userDao.findByPhone(phone);
        //手机尚未注册
        if (user_phone != 0) {
            return   result=4;
        }
        //生成验证码
        String FR = GetFourRandom.getFourRandom();
        //发送短信 发送成功返回true
        boolean flag = SmsUtils.sendRegistSms(phones, FR);
        if (flag) {
            System.out.println("验证码为 " + FR);
            //存入缓存库 验证码key 验证码 过期时间
            redisUtil.set("Verify"+phone,FR,300);
            return    result=1;
        } else {
            return result=3;
        }
    }

    /**
     * 用户注册
     * @param user 用户id
     * @return 1为成功 2为验证码过期或者不正确
     */
    @Override
    public Integer saveAccount(User user) {
        Integer result=0;

        if (redisUtil.get("Verify"+user.getPhone())==null||!user.getVerify().equals(redisUtil.get("Verify"+user.getPhone()))){
            return  result=2;
        }
        //设置初始值
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        user.setUid(uuid);
        user.setName("smallProfit");
        user.setToken("DM");
        user.setBirthday("0-0-0");
        user.setImage("http://img.isdfmk.xyz/iduyadfgjdekldjhf.png");
        user.setSex("1");
        //新增用户
        userDao.saveAccount(user);
        //新增用户账户信息
        accountSettingsDao.addUser(uuid);
        //新增用户会员信息
        memberDao.addUser(uuid);
        //删除缓存库验证码
        redisUtil.del("Verify"+user.getPhone());
        return result=1;
    }


    /**
     * 账户登录
     * @param user 用户对象
     * @return  1为账户登录  2为手机登录 8为人机验证失败 3为使用初始名登录 4输入空值 5为用户不存在 6参数非法 7密码错误
     */
    @Override
    public Integer accountLogin(User user, HttpServletRequest request) throws Exception {
        //判断用户输入是否完整
        if (user == null && user.getPassword() == null) {
            //用户输入信息不完整
            return 4;
        }
        //进行二次人机验证 1为成功 2为失败
        int verifyTicket= TCaptchaVerify.verifyTicket(user.getTicket(),user.getRandStr(), IPUtil.getIP(request));

        //二次验证验证码
        if (verifyTicket==-1){
            return 8;
        }
        if (USER_NAME.equals(user.getName())) {
            //不能使用初始名字登录不
            return 3;
        }
        //加密查询用户是否存在
        String Account=AesEncryptUtil.encrypt(user.getName());
        //根据手机号查
        Integer phone =  userDao.findByPhone(Account);
        Integer name  =  userDao.findByName(user.getName());
        if (phone==0 && name==0){
            return 5;
        }

        //判断为账户为登录
        if (name!=0 && phone==0){
            //查询用户密码
            String password = userDao.fendUserPassword(user.getName(),1);
            //解密比对
            String userPassword = AesEncryptUtil.desEncrypt(password);
            Boolean felt=userPassword.equals(user.getPassword());
            if (felt){
                return 1;
            }
            return 7;
        }
        //判断为手机登录
        if (phone!=0 && name==0){
            //查询用户密码
            String password = userDao.fendUserPassword(Account,2);
            //解密比对
            String userPassword = AesEncryptUtil.desEncrypt(password);
            Boolean felt=userPassword.equals(user.getPassword());
            System.out.println(felt);
            if (felt){
                return 2;
            }
            return 7;
        }
        return 6;
    }


    /**
     * 查询用户返回需要的信息
     * @param account 账户
     * @param accountType 账号类型 1为账号 2为手机
     * @return
     * @throws Exception
     */
    @Override
    public Login findReturnLogin(String account , Integer accountType) throws Exception {
        String accounts=account;
        if (accountType==2){
            //加密
            accounts=AesEncryptUtil.encrypt(account);
        }
        User user = userDao.fendUser(accounts,accountType);
        Login login = new Login();
        login.setUid(user.getUid());
        login.setImage(user.getImage());
        login.setToken(user.getToken());
        login.setName(user.getName());
        this.pushNews(user.getUid());
        return login;
    }


    /**
     * 推送消息数量
     * @param userId 用户id
     * @throws IOException
     */
    @Override
    public void pushNews(String userId) throws IOException {
       Integer  quantity = newsDao.unreadQuantity(userId);
        Thread thread=new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(10000);
                    List<News> news = new ArrayList<>();
                    newsService.pushNews(news,userId,quantity);
                    System.out.println("-----------------------sdfsdfsdfsdfdsf------------------------");
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    e.printStackTrace();
                } catch (IOException e) {
                    Thread.currentThread().interrupt();
                    e.printStackTrace();
                } catch (NullPointerException e){
                    Thread.currentThread().interrupt();
                    e.printStackTrace();
                }
            }
        });
        thread.start();

    }

    /**
     * 修改密码发送短信验证,验证手机发送短信新手机发送短信
     * @param phone 手机号码
     * @return 1 发送短信成功  2 发送失败 3用户不存在 4错误
     */
    @Override
    public Integer smVerify(String phone,String type) throws Exception {
        //加密
        String phones = AesEncryptUtil.encrypt(phone);
        Integer result = userDao.findByPhone(phones);
        if (result ==0) {
            return 3;
        }
        //生成随机码
        String FR = GetFourRandom.getFourRandom();
        System.out.println("验证码为 " + FR);
        boolean flag=false;
        //修改密码
        if (type.equals("updateVerify")){
            flag= SmsUtils.forgetPassword(phone, FR);
        }
        //验证旧手机
        if (type.equals("formerPhoneVerify")){
            flag = SmsUtils.updatePhone(phone , FR);
        }
        //验证新手机
        if (type.equals("newPhoneVerify")){
            flag = SmsUtils.updatePhone(phone, FR);
        }
        if (flag) {
            //验证码存入缓存
            Boolean fale = redisUtil.set(type+phones,FR,300);
            return 1;
        } else {
            return 2;
        }
    }


    /**
     * 修改登录密码
     * @param user
     * @return
     */
    @Override
    public Integer updatePasswordPhone(User user) throws Exception {
        //加密手机号
        String phones = AesEncryptUtil.encrypt(user.getPhone());
        //验证码
        String verify = (String) redisUtil.get("updateVerify"+phones);
        if (verify!=null && user.getVerify().equals(verify)){
            userDao.updatePasswordPhone(phones,user.getPassword());
            return 1;
        }
        return 2;

    }


    /**
     * 修改用户头像
     * @param Images 图片流
     * @param uid 用户id
     * @return 用户图片
     * @throws IOException
     */
    @Override
    public String updatePortrait(InputStream Images, String uid) throws IOException {
        //压缩图片 上传图片至七牛云 返回图片地址
        String Image = UploadPicturesUtil.UploadPicturesUtil(space,Images,uid);
        userDao.updatePortrait(Image,uid);
        return Image;
    }

    /**
     * 查询用户个人信息
     * @param uid 用户id
     * @return
     * @throws Exception
     */
    @Override
    public User findByIdInformation(String uid) throws Exception {
        User users=userDao.findByIdInformation(uid);
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
        Integer nameQuantity = userDao.findNameQuantity(user.getName(),user.getUid());
        /**查询是否有重名 有重名则改回原有名字**/
        if(nameQuantity>0){
            String name = userDao.findUserName(user.getUid());
            user.setName(name);
            redis=1;
        }
        redis =redis + userDao.updateInformation(user);
        return redis;
    }

    /**
     * 查询手机号
     * @param uid 用户id
     * @return 手机号
     */
    @Override
    public String findByIdPhone(String uid) {
        return userDao.findByIdPhone(uid);
    }

    @Override
    public int updatePhone(String phone, String uid) {
        return userDao.updatePhone(phone,uid);
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
