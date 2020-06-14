package cn.xgtd.controller;

import cn.xgtd.domain.user.User;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.Results;
import cn.xgtd.response.Return.ResultContent;
import cn.xgtd.service.UserService;
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
	public ResultContent addUser(@RequestBody User user){
		User addUser = userService.addUser(user);
		/**用户名重复**/
		if (addUser == null){
			return new ResultContent(CommonCode.FAIL,null);
		}else {
			Results results = new Results<>();
			results.setData(addUser);
			return new ResultContent(CommonCode.SUCCESS,results);
		}

	}

	/**
	 * 用户登录
	 * @param userName 用户账户
	 * @param password 用户密码
	 * @return
	 */
	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public ResultContent userLogin(String userName, String password) {
		User responseUserUser = userService.userLogin(userName, password);
		if (responseUserUser == null) {
			return new ResultContent(CommonCode.FAIL, null);
		}
		Results results = new Results();
		results.setData(responseUserUser);
		return new ResultContent(CommonCode.SUCCESS, results);
	}


	/**
	 * 查询用户以及用户下的子用户
	 * @param uId 用户id
	 * @return
	 */
	@RequestMapping(value = "/findUser/{uId}", method = RequestMethod.GET)
	public ResultContent findUser(@PathVariable("uId") Integer uId){
		List<User> userList = userService.findUserList(uId);
		Results results = new Results();
		results.setData(userList);
		return new ResultContent(CommonCode.SUCCESS,results);
	}


	/**
	 * 删除用户
	 * @param userId 用户id
	 * @return
	 */
	@RequestMapping(value = "/deleteUser/{uId}", method = RequestMethod.DELETE)
	public ResultContent deleteUser(@PathVariable("uId") Integer userId){
		Integer result = userService.deleteUser(userId);
		if (result != null){
			return new ResultContent(CommonCode.SUCCESS,null);
		}
		return new ResultContent(CommonCode.FAIL,null);
	}

	/**
	 * 修改用户
	 * @param user 用户对象
	 * @return
	 */
	@RequestMapping(value = "/updateUser", method = RequestMethod.PUT)
	public ResultContent updateUser(@RequestBody User user){
		Results results = new Results();
		User result = userService.updateUser(user);
		results.setData(result);
		if (result != null){
			return new ResultContent(CommonCode.SUCCESS,results);
		}
		return new ResultContent(CommonCode.FAIL,null);
	}

	/**
	 * 搜索用户
	 * @param content 查询内容
	 * @param laterTime 之后
	 * @param beforeTime 之前
	 * @return
	 */
	@RequestMapping(value = "/findUserSearch",method = RequestMethod.GET)
	public ResultContent findUserSearch(String content, String laterTime, String beforeTime){
		if (laterTime.equals("")){
			laterTime = null;
		}
		if (beforeTime.equals("")){
			beforeTime = null;
		}
		List<User> users = userService.findUserSearch(content,laterTime,beforeTime);
		Results results = new Results();
		results.setData(users);
		return new ResultContent(CommonCode.SUCCESS,results);
	}


}
