package cn.xgtd.controller;

import cn.xgtd.domain.user.User;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.objectReturn.ObjectReturn;
import cn.xgtd.response.objectReturn.ObjectReturnResponse;
import cn.xgtd.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Kite
 * @date 2020/6/1
 */
@Controller
@RequestMapping("/userController")
@ResponseBody
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 管理用户登录
     * @param userName 用户账户
     * @param password 用户密码
     * @return
     */
    @RequestMapping(value = "/userLogin" , method = RequestMethod.POST)
    public ObjectReturnResponse userLogin(String userName,String password){
        User responseUserUser = userService.userLogin(userName , password);
        if (responseUserUser == null){
            return new ObjectReturnResponse(CommonCode.FAIL,null);
        }
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject(responseUserUser);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

}
