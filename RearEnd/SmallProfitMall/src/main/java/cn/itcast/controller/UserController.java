package cn.itcast.controller;

import cn.itcast.domain.user.Login;
import cn.itcast.domain.user.User;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.UserService;
import cn.itcast.skd.Constant;
import cn.itcast.skd.Vaptcha;
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.redis.RedisUtil;
import cn.itcast.util.verify.VerifyUtil;
import com.aliyuncs.exceptions.ClientException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
	VerifyUtil verifyUtil;

	/**注入缓存工具类**/
	@Autowired
	private RedisUtil redisUtil;

	private Vaptcha vaptcha = Vaptcha.getInstance(Constant.SecretKey, Constant.Vid, Constant.Scene);

	/**
	 * 查询所有方法
	 *
	 * @return
	 */
	@RequestMapping(value = "/findAll")
	public QueryResponseResult findAll() {
		QueryResult queryResult = new QueryResult();
		// 调用service的方法
		List<User> list = userService.findAll();
		queryResult.setList(list);
		return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
	}

	/**
	 * 用户通过账号，密码登录方法
	 *2为人机验证失败 3为使用初始名登录 4输入空值 5为用户不存在 6参数非法 7密码错误 8 二次验证码失败
	 * @return
	 */
	@RequestMapping("/accountLogin")
	public QueryResponseResult accountLogin(@RequestBody User user, HttpServletRequest request) throws Exception {
		Integer result = userService.accountLogin(user,request);
		//二次验证验证码
		if (result==8){
			return new QueryResponseResult(CommonCode.ValidationFails,null);
		}
		if (result==1||result==2) {
			QueryResult queryResult=new QueryResult();
			Login login = userService.findReturnLogin(user.getName(),result);
			queryResult.setList(Arrays.asList(login));
			return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
		}
		if (result==3) {
			//不能使用初始名字登录不
			return new QueryResponseResult(CommonCode.nameError, null);
		}
		return  new QueryResponseResult(CommonCode.FAIL, null);
	}


	/**
	 * 注册手机验证接口
	 *
	 * @param phone
	 * @return 验证结果 1为成功 2为手机号不正确 3为发送短信失败 4为手机号已注册
	 * @throws ClientException
	 */
	@RequestMapping(value = "/registerVerify",method = RequestMethod.GET)
	public QueryResponseResult registerVerify(String phone) throws Exception {
		Integer result= userService.registerVerify(phone);
		if (result==1){
			return new QueryResponseResult(CommonCode.SUCCESS, null);
		}
		if (result==2) {
			return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
		}
		if (result==4) {
			return new QueryResponseResult(CommonCode.FALL_USER_REGISTER, null);
		}
		if (result==3) {
			return new QueryResponseResult(CommonCode.SERVER_ERROR, null);

		}
		return new QueryResponseResult(CommonCode.FAIL, null);
	}

	/**
	 * 注册
	 * @param user 用户对象
	 * @param session 传入的验证码消息
	 * @return 返回是否成功
	 * @throws Exception
	 */
	@RequestMapping("/register")
	public QueryResponseResult register(@RequestBody User user, HttpSession session) throws Exception {
		Integer result = userService.saveAccount(user);
		if (result==1) {
			return new QueryResponseResult(CommonCode.SUCCESS,null);
		}
		//注册失败
		return new QueryResponseResult(CommonCode.FAIL,null);
	}

	/**
	 * 短信验证接口(修改登录密码）
	 *
	 * @param phone
	 * @return 1 发送短信成功  2 发送失败 3用户不存在 4错误
	 * @throws ClientException
	 */
	@RequestMapping("/SmVerify/{phone}")
	public QueryResponseResult SmVerify(@PathVariable("phone") String phone) throws Exception {
		Integer result = userService.smVerify(phone,"updateVerify");

		if (result ==1) {
			return new QueryResponseResult(CommonCode.SUCCESS, null);
		}
		if (result==2){
			return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
		}
		return new QueryResponseResult(CommonCode.FAIL, null);

	}

	/**
	 * 根据手机号码修改密码
	 *
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping("/updatePasswordPhone")
	public QueryResponseResult updatePasswordPhone(@RequestBody User user, HttpSession session) throws Exception {
		Integer result=	userService.updatePasswordPhone(user);
		if (result==1){
			return new QueryResponseResult(CommonCode.SUCCESS, null);
		} else {
			return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
		}
	}


	/**
	 * 根据uid修改头像
	 *
	 * @param
	 * @return 用户头像
	 */
	@RequestMapping(value = "/updatePortrait", method = RequestMethod.POST)
	public QueryResponseResult updatePortrait(MultipartFile file, String userId)
			throws IOException {
		QueryResult queryResult = new QueryResult();
		InputStream fileInputStream = file.getInputStream();
		String Image = userService.updatePortrait(fileInputStream, userId);
		List Images = new ArrayList();
		Images.add(Image);
		queryResult.setList(Images);
		return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
	}

	/**
	 * 查询用户信息
	 *
	 * @return
	 */
	@RequestMapping(value = "/findByIdInformation/{userId}", method = RequestMethod.GET)
	public QueryResponseResult findByIdInformation(@PathVariable("userId") String userId) throws Exception {
		QueryResult queryResult = new QueryResult();
		// 调用service的方法
		User user = userService.findByIdInformation(userId);
		List<User> users = Arrays.asList(user);
		queryResult.setList(users);
		return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
	}

	/**
	 * 修改个人信息
	 *
	 * @return
	 */
	@RequestMapping(value = "/updateInformation", method = RequestMethod.POST)
	public QueryResponseResult updateInformation(@RequestBody User user) {
		String birthday = user.getBirthday();
		List birthdays = Arrays.asList(birthday.split("-"));
		if (birthdays.get(1).equals(0)||birthdays.get(1).equals(0)){
			user.setBirthday(null);
		}
		Integer result = userService.updateInformation(user);
		if (result == 1) {
			//数据库更新成功
			return new QueryResponseResult(CommonCode.SUCCESS, null);
		} else if (result == 2){
			//修改用户名失败 用户名已存在
			return new QueryResponseResult(CommonCode.PARTIALLY_SUCCESS,null);
		}else {
			//数据库更新失败失败
			return new QueryResponseResult(CommonCode.FAIL, null);
		}

	}

	/**
	 * 旧手机发送验证码
	 * @param phone 输入的旧手机
	 * @param userId 用户id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/formerPhoneSMS", method = RequestMethod.POST)
	public QueryResponseResult formerPhoneSMS(String phone, String userId)
			throws Exception {
		String phones = userService.findByIdPhone(userId);
		if (phones.equals(phone)) {
			//解密手机号
			String phoness = AesEncryptUtil.desEncrypt(phone);
			Integer request = userService.smVerify(phoness,"formerPhoneVerify");
			if (request==1){
				return new QueryResponseResult(CommonCode.SUCCESS, null);
			}
			if (request==2){
				return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
			}
		}
		return new QueryResponseResult(CommonCode.FAIL, null);
	}

	/**
	 * 验证旧手机结果
	 * @param verification 验证码
	 * @param phone 手机号码
	 * @return
	 */
	@RequestMapping(value = "/formerPhone", method = RequestMethod.POST)
	public QueryResponseResult updateFormerPhone(String verification, String phone) {
		QueryResult queryResult = new QueryResult();
		//取缓存库验证码
		String auth = (String) redisUtil.get("formerPhoneVerify"+phone);
		if (auth!=null && verification.equals(auth)) {
			List Phone = new ArrayList();
			Phone.add(phone);
			queryResult.setList(Phone);
			return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
		} else {
			return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
		}
	}

	/**
	 * 验证新手机号码短信验证
	 */
	@RequestMapping(value = "/newPhoneSMS", method = RequestMethod.POST)
	public QueryResponseResult newPhoneSMS(String phone)
			throws Exception {
		String  phones = userService.findByIdPhone(phone);
		if (phones != null) {
			//验证失败，该手机号已经存在
			return new QueryResponseResult(CommonCode.FALL_USER_REGISTER, null);
		}
		//解密手机号
		String phoness=AesEncryptUtil.desEncrypt(phone);
		Integer result = userService.smVerify(phoness,"newPhoneVerify");
		if (result==1){
			return new QueryResponseResult(CommonCode.SUCCESS, null);
		} else {
			return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
		}
	}

	/**
	 * 修改手机号码
	 * @param verification 验证码
	 * @param phone 手机好
	 * @param userId 用户id
	 * @return
	 */
	@RequestMapping(value = "/updatePhone", method = RequestMethod.POST)
	public QueryResponseResult updatePhone(String verification, String phone, String userId) {
		//取缓存库验证码
		String auth = (String) redisUtil.get("newPhoneVerify"+phone);
		if (auth!=null && verification.equals(auth)) {
			int phones = userService.updatePhone(phone, userId);
			if (phones == 1) {
				return new QueryResponseResult(CommonCode.SUCCESS, null);
			} else {
				return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
			}
		} else {
			return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
		}
	}

}
