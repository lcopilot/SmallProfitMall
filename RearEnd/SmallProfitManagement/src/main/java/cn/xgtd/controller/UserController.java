package cn.xgtd.controller;

import cn.xgtd.domain.user.User;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.list.QueryResponseResult;
import cn.xgtd.response.list.QueryResult;
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
	public ObjectReturnResponse addUser(@RequestBody User user){
		User addUser = userService.addUser(user);
		/**用户名重复**/
		if (addUser == null){
			return new ObjectReturnResponse(CommonCode.FAIL,null);
		}else {
			ObjectReturn objectReturn = new ObjectReturn<>();
			objectReturn.setObject(addUser);
			return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
		}

	}

	/**
	 * 用户登录
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
		List<User> userList = userService.findUserList(uId);
		ObjectReturn objectReturn = new ObjectReturn();
		objectReturn.setObject(userList);
		return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
	}


	/**
	 * 删除用户
	 * @param userId 用户id
	 * @return
	 */
	@RequestMapping(value = "/deleteUser/{uId}", method = RequestMethod.DELETE)
	public ObjectReturnResponse deleteUser(@PathVariable("uId") Integer userId){
		Integer result = userService.deleteUser(userId);
		if (result != null){
			return new ObjectReturnResponse(CommonCode.SUCCESS,null);
		}
		return new ObjectReturnResponse(CommonCode.FAIL,null);
	}

	/**
	 * 修改用户
	 * @param user 用户对象
	 * @return
	 */
	@RequestMapping(value = "/updateUser", method = RequestMethod.PUT)
	public ObjectReturnResponse updateUser(@RequestBody User user){
		ObjectReturn objectReturn = new ObjectReturn();
		User result = userService.updateUser(user);
		objectReturn.setObject(result);
		if (result != null){
			return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
		}
		return new ObjectReturnResponse(CommonCode.FAIL,null);
	}



}
