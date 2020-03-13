package cn.itcast.controller;

import cn.itcast.skd.Constant;
import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.Password;
import cn.itcast.domain.user.User;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.UserService;
import cn.itcast.skd.Vaptcha;
import cn.itcast.util.logic.GetFourRandom;
import cn.itcast.util.user.SmsUtils;
import cn.itcast.util.verify.VerifyUtil;
import com.aliyuncs.exceptions.ClientException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 帐户web
 */
@Controller
@RequestMapping("/user")
@ResponseBody
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private Login login;

    @Autowired
    private GetFourRandom getFourRandom;

    @Autowired
    QueryResult queryResult;

    @Autowired
    VerifyUtil verifyUtil;

    private Vaptcha vaptcha = Vaptcha.getInstance(Constant.SecretKey, Constant.Vid, Constant.Scene);
    /**
     * 查询所有方法
     * @return
     */
    @RequestMapping(value = "/findAll")
    public QueryResponseResult findAll(){
        // 调用service的方法
        List<User> list = userService.findAll();
        queryResult.setList(list);
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }

    /**
     * 用户通过账号，密码登录方法
     * @return
     */
    @RequestMapping("/accountLogin")
    public QueryResponseResult accountLogin(@RequestBody User user,HttpServletRequest request){
        if (!verifyUtil.VaptchaVerify(user.getToken(),request)) {
            return new QueryResponseResult(CommonCode.ValidationFails,null); //令牌错误不正确
        }
        if (user.getName().equals("小白")){
            return new QueryResponseResult(CommonCode.nameError,null); //不能使用初始名字登录不
        }
        User name = userService.findByName(user.getName()); //根据用户名查询
        User phone = userService.findByPhone(user.getName()); //根据手机号查询
        System.out.println(phone);
        if(user !=null && user.getPassword()!=null){ //判断用户输入是否完整
            if (name == null && phone == null) {  //判断用户是否存在
                return new QueryResponseResult(CommonCode.FAIL, null); //用户不存在
            }
                if(user.getName().length()!=11){  //判断用户是使用用户名登录
                    if(name.getPassword().equals(user.getPassword())){
                        login.setName(name.getName());
                        login.setUid(name.getUid());
                        login.setToken(name.getToken());
                        login.setImage(name.getImage());
                        List<Login> logins= Arrays.asList(login);
                        queryResult.setList(logins);
                        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);   //登录成功
                    }else {
                        return new QueryResponseResult(CommonCode.FAIL,null);//密码不正确
                    }
                }else if (user.getName().length()==11){ //判断用户是使用手机号码登录
                    if(phone.getPassword().equals(user.getPassword())){
                        login.setName(phone.getName());
                        login.setUid(phone.getUid());
                        login.setToken(phone.getToken());
                        login.setImage(phone.getImage());
                        List<Login> logins= Arrays.asList(login);
                        queryResult.setList(logins);
                        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);   //登录成功
                    }else {
                        return new QueryResponseResult(CommonCode.FAIL,null); //密码不正确
                    }
                }
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null); //用户输入信息不完整
        }
        return null;
    }

    /**
     * 注册手机验证接口
     * @param phone
     * @return
     * @throws ClientException
     */
    @RequestMapping("/registerVerify/{phone}")
    public QueryResponseResult registerVerify(@PathVariable("phone") String phone , HttpSession session) throws ClientException {
        if (phone.length()==11){      //判断手机号是否正确
            User user_phone = userService.findByPhone(phone); //根据手机号查询
            if (user_phone==null){       //手机尚未注册
                String FR = getFourRandom.getFourRandom();
                System.out.println("验证码为 "+FR);
                session.setAttribute("Verify",FR);//设置验证码session
                session.setAttribute("phone",phone);//设置手机号session
                boolean flag= SmsUtils.sendRegistSms(phone,FR);
                if(flag){
                    removeAttrbute(session,"Verify");//存入session
                    return new QueryResponseResult(CommonCode.SUCCESS,null);
                }else {
                    return new QueryResponseResult(CommonCode.SERVER_ERROR,null);
                }
            }else {
                return new QueryResponseResult(CommonCode.FALL_USER_REGISTER,null);
            }
        }else{
            return new QueryResponseResult(CommonCode.INVALID_PARAM,null);
        }
    }

    /**
     * 注册
     * @return
     */
    @RequestMapping("/register")
    public QueryResponseResult register(@RequestBody User user,HttpSession session) {
        String Verify =(String) session.getAttribute("Verify");
        String phone =(String) session.getAttribute("phone");
        if(user.getVerify().equals(Verify)&&user.getPhone().equals(phone)){
            userService.saveAccount(user);  //存入对象
            return new QueryResponseResult(CommonCode.SUCCESS,null);//注册成功
        }else{
            return new QueryResponseResult(CommonCode.FAIL,null);//注册失败
        }
    }

    /**
     * 短信验证接口(修改登录密码，支付密码）
     * @param phone
     * @param session
     * @return
     * @throws ClientException
     */
    @RequestMapping("/SmVerify/{phone}")
    public  QueryResponseResult SmVerify(@PathVariable("phone") String phone , HttpSession session) throws ClientException {
        User user1 =userService.findByPhone(phone);
        if (user1!=null){
            String FR = getFourRandom.getFourRandom();
            System.out.println("修改验证码为 "+FR);
            boolean flag = SmsUtils.forgetPassword(user1.getPhone(),FR);
            if(flag){
                session.setAttribute("passwordVerify",FR);//存入验证码session
                session.setAttribute("upPasswordPhone",phone);//手机号存入session
                return new QueryResponseResult(CommonCode.SUCCESS,null);
            }else {
                return new QueryResponseResult(CommonCode.SERVER_ERROR,null);
            }
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     * 根据手机号码修改接口
     * @param user
     * @param session
     * @return
     */
    @RequestMapping("/updatePasswordPhone")
    public QueryResponseResult updatePasswordPhone(@RequestBody User user,HttpSession session){
        String passwordVerify =(String) session.getAttribute("passwordVerify");
        String phone =(String) session.getAttribute("upPasswordPhone");
        String password = user.getPassword();
        System.out.println(passwordVerify);
        System.out.println(phone);
        if(user.getPhone().equals(phone)){
            if (user.getVerify().equals(passwordVerify)){
                System.out.println(password);
                System.out.println();
                userService.updatePasswordPhone(phone,password);
                System.out.println("执行完成");
                return new QueryResponseResult(CommonCode.SUCCESS,null);
            }else {
                return new QueryResponseResult(CommonCode.FAIL,null);
            }
        }else {
            return new QueryResponseResult(CommonCode.INVALID_PARAM,null);
        }
    }

    /**
     * 根据旧密码修改密码
     * @param
     * @return
     */
    @RequestMapping("/updatePasswordUid")
    public QueryResponseResult updatePasswordUid(@RequestBody Password password){
        User user = userService.findByUid(password.getUid());
        String SqlPassword = user.getPassword();//数据库密码
        String ExpiredPassword =password.getExpiredPassword();//旧密码
        String LatestPassword = password.getLatestPassword();//新密码
        if(SqlPassword.equals(ExpiredPassword)){
            userService.updatePasswordUid(password.getUid(),LatestPassword);
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }else{
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     * 根据uid修改头像
     * @param
     * @return
     */
    @RequestMapping(value = "/updatePortrait",method = RequestMethod.POST)
    public QueryResponseResult updatePortrait(MultipartFile file, String userId) throws IOException {
        InputStream fileInputStream = file.getInputStream();
        String Image = userService.updatePortrait(fileInputStream,userId);
        List Images = new  ArrayList();
        Images.add(Image);
        queryResult.setList(Images);
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }

    /**
     * 查询用户信息
     * @return
     */
    @RequestMapping(value = "/findByIdInformation/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findByIdInformation(@PathVariable("userId") String userId){
        // 调用service的方法
        System.out.println(userId);
        User user = userService.findByIdInformation(userId);
        List<User> users= Arrays.asList(user);
        queryResult.setList(users);
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }


    //删除session
    public void removeAttrbute(HttpSession session, String codeName) {
        System.out.println("开始倒计时五分钟");
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            public void run() {
                // 删除session中存的验证码
                session.removeAttribute(codeName);
                System.out.println("删除成功");
            }
            //设置时间为五分钟
        }, 10*1000*3000);
    }



}
