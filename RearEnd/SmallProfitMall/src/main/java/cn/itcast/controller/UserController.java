package cn.itcast.controller;

import cn.itcast.domain.Login;
import cn.itcast.domain.User;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.UserService;
import cn.itcast.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.rmi.runtime.Log;

/**
 * 帐户web
 */
@Controller
@RequestMapping("/user")
@ResponseBody
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 查询所有方法
     * @return
     */
    @RequestMapping("/findAll")
    public QueryResponseResult findAll(){
        System.out.println("表现层：查询所有账户...");
        // 调用service的方法
        List<User> list = userService.findAll();
        QueryResult<User> result = new QueryResult<>();
        result.setList(list);
        return new QueryResponseResult(CommonCode.SUCCESS,result);
    }

    /**
     * 用户通过账号，密码登录方法
     * @return
     */
    @RequestMapping("/accountLogin")
    public QueryResponseResult accountLogin(@RequestBody String account, String password, String token){
        System.out.println("通过账号密码登录方法登录");
        User name = userService.findByName(account); //根据用户名查询
        User phone = userService.findByPhone(account); //根据手机号查询
        if(account!=null && password!=null && token!=null){ //判断用户输入是否完整
            if (name == null && phone == null) {  //判断用户是否存在
                return new QueryResponseResult(CommonCode.FAIL, null); //用户不存在
            }
                if(account.length()!=11){  //判断用户是使用用户名登录
                    if(name.getPassword().equals(password)){
                        Login login = new Login();
                        login.setName(name.getName());
                        login.setUid(name.getUid());
                        login.setToken(name.getToken());
                        List<Login> logins= Arrays.asList(login);
                        QueryResult<Login> result = new QueryResult<>();
                        result.setList(logins);
                        return new QueryResponseResult(CommonCode.SUCCESS,result);   //登录成功
                    }else {
                        return new QueryResponseResult(CommonCode.FAIL,null);//密码不正确
                    }
                }else if (account.length()==11){ //判断用户是使用手机号码登录
                    if(phone.getPassword().equals(password)){
                        Login login = new Login();
                        login.setName(phone.getName());
                        login.setUid(phone.getUid());
                        login.setToken(phone.getToken());
                        List<Login> logins= Arrays.asList(login);
                        QueryResult<Login> result = new QueryResult<>();
                        result.setList(logins);
                        return new QueryResponseResult(CommonCode.SUCCESS,result);   //登录成功
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
     * 保存
     * @return
     */
    @RequestMapping("/save")
    public QueryResponseResult save(User user) {
        userService.saveAccount(user);
        System.out.println(user.getName());
        return new QueryResponseResult(CommonCode.SUCCESS,null);
    }




}
