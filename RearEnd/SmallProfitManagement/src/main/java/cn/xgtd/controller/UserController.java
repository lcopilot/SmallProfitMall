package cn.xgtd.controller;

import cn.xgtd.domain.user.User;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.list.QueryResponseResult;
import cn.xgtd.response.objectReturn.ObjectReturn;
import cn.xgtd.response.objectReturn.ObjectReturnResponse;
import cn.xgtd.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
	 * 新增用户
	 * @param user 用户
	 * @return
	 */
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public QueryResponseResult addUser(@RequestBody User user){
		//用户名重复
		Integer repetition = 10001;
		Integer result = userService.addUser(user);
		if (result.equals(repetition)){
			return new QueryResponseResult(CommonCode.FALL_USER_REGISTER,null);
		}
		if (result == 1 ){
			return new QueryResponseResult(CommonCode.SUCCESS,null);
		}
		return new QueryResponseResult(CommonCode.FAIL,null);
	}

	/**
	 * 管理用户登录
	 * @param userName 用户账户
	 * @param password 用户密码
	 * @return
	 */
	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public ObjectReturnResponse userLogin(String userName, String password) {
		User responseUserUser = userService.userLogin(userName, password);
		if (responseUserUser == null) {
			return new ObjectReturnResponse(CommonCode.FAIL, null);
		}
		ObjectReturn objectReturn = new ObjectReturn();
		objectReturn.setObject(responseUserUser);
		return new ObjectReturnResponse(CommonCode.SUCCESS, objectReturn);
	}


	/**
	 * 查询用户以及用户下的子用户
	 * @param uId 用户id
	 * @return
	 */
	@RequestMapping(value = "/findUser/{uId}", method = RequestMethod.GET)
	public ObjectReturnResponse findUser(@PathVariable("uId") Integer uId){
		List<User> userList = userService.findUser(uId);
		ObjectReturn objectReturn = new ObjectReturn();
		objectReturn.setObject(userList);
		return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
	}





}
