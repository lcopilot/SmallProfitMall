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
import cn.itcast.util.encryption.AesEncryptUtil;
import cn.itcast.util.logic.GetFourRandom;
import cn.itcast.util.logic.sessionUtil;
import cn.itcast.util.user.SmsUtils;
import cn.itcast.util.verify.IPUtil;
import cn.itcast.util.verify.TCaptchaVerify;
import cn.itcast.util.verify.VerifyUtil;
import com.aliyuncs.exceptions.ClientException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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
	VerifyUtil verifyUtil;

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
	 *
	 * @return
	 */
	@RequestMapping("/accountLogin")
	public QueryResponseResult accountLogin(@RequestBody User user, HttpServletRequest request) throws Exception {
//		if (!verifyUtil.VaptchaVerify(user.getToken(), request)) {
//			return new QueryResponseResult(CommonCode.ValidationFails, null); //令牌错误不正确
//		}
		int verifyTicket=TCaptchaVerify.verifyTicket(user.getTicket(),user.getRandStr(), IPUtil.getIP(request));
		if (verifyTicket==1){			//二次验证验证码
			return new QueryResponseResult(CommonCode.SUCCESS,null);
		}else if (verifyTicket==-1){
			return new QueryResponseResult(CommonCode.ValidationFails,null);
		}

		if (user.getName().equals("smallProfit")) {
			return new QueryResponseResult(CommonCode.nameError, null); //不能使用初始名字登录不
		}


		if (user == null && user.getPassword() == null) { //判断用户输入是否完整
			return new QueryResponseResult(CommonCode.FAIL, null); //用户输入信息不完整
		}

		User users= userService.findAccount(user);
		if (users == null) {  //判断用户是否存在
			return new QueryResponseResult(CommonCode.FAIL, null); //用户不存在
		}
		String password=AesEncryptUtil.desEncrypt(users.getPassword());
		if (password.equals(user.getPassword())) {
			QueryResult queryResult = new QueryResult();
			Login login=userService.findLogin(users);
			List<Login> logins = Arrays.asList(login);
			queryResult.setList(logins);
			return new QueryResponseResult(CommonCode.SUCCESS, queryResult);   //登录成功
		} else {
			return new QueryResponseResult(CommonCode.FAIL, null);//密码不正确
		}
	}

	/**
	 * 注册手机验证接口
	 *
	 * @param phone
	 * @return
	 * @throws ClientException
	 */
	@RequestMapping(value = "/registerVerify",method = RequestMethod.GET)
	public QueryResponseResult registerVerify(String phone,
			HttpSession session) throws Exception {
		String phones = AesEncryptUtil.desEncrypt(phone);
		if (phones.length() != 11) {      //判断手机号是否正确
			return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
		}
		User user_phone = userService.findByPhone(phone); //根据手机号查询
		if (user_phone == null) {       //手机尚未注册
			String FR = GetFourRandom.getFourRandom();
			boolean flag = SmsUtils.sendRegistSms(phones, FR);
			if (flag) {
				System.out.println("验证码为 " + FR);
				session.setAttribute("Verify", FR);//设置验证码session
				session.setAttribute("phone", phone);//设置手机号session
				sessionUtil.removeAttrbute(session, "Verify");//倒计时删除session
				return new QueryResponseResult(CommonCode.SUCCESS, null);
			} else {
				return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
			}
		} else {
			return new QueryResponseResult(CommonCode.FALL_USER_REGISTER, null);
		}
	}

	/**
	 * 注册
	 *
	 * @return
	 */
	@RequestMapping("/register")
	public QueryResponseResult register(@RequestBody User user, HttpSession session) throws Exception {
		String Verify = (String) session.getAttribute("Verify");
		String phone = (String) session.getAttribute("phone");
		session.invalidate();	//销毁session
		if (user.getVerify().equals(Verify) && user.getPhone().equals(phone)) {
			userService.saveAccount(user);  //存入对象
			return new QueryResponseResult(CommonCode.SUCCESS, null);//注册成功
		} else {
			return new QueryResponseResult(CommonCode.FAIL, null);//注册失败
		}
	}

	/**
	 * 短信验证接口(修改登录密码，支付密码）
	 *
	 * @param phone
	 * @param session
	 * @return
	 * @throws ClientException
	 */
	@RequestMapping("/SmVerify/{phone}")
	public QueryResponseResult SmVerify(@PathVariable("phone") String phone, HttpSession session)
			throws Exception {
		String phones = AesEncryptUtil.encrypt(phone);	//加密
		User users = userService.findByPhone(phones);
		if (users != null) {
			String FR = GetFourRandom.getFourRandom();
			System.out.println("修改验证码为 " + FR);
			String phoness = AesEncryptUtil.desEncrypt(users.getPhone());
			boolean flag = SmsUtils.forgetPassword(phoness, FR);
			if (flag) {
				session.setAttribute("passwordVerify", FR);//存入验证码session
				session.setAttribute("upPasswordPhone", phone);//手机号存入session
				sessionUtil.removeAttrbute(session, "passwordVerify");
				return new QueryResponseResult(CommonCode.SUCCESS, null);
			} else {
				return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
			}
		} else {
			return new QueryResponseResult(CommonCode.FAIL, null);
		}
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
		String passwordVerify = (String) session.getAttribute("passwordVerify");
		String phone = (String) session.getAttribute("upPasswordPhone");
		String password = user.getPassword();
		session.invalidate();	//销毁session
		if (user.getPhone().equals(phone)) {
			if (user.getVerify().equals(passwordVerify)) {
				String phones = AesEncryptUtil.encrypt(phone);	//加密
				userService.updatePasswordPhone(phones, password);
				return new QueryResponseResult(CommonCode.SUCCESS, null);
			} else {
				return new QueryResponseResult(CommonCode.FAIL, null);
			}
		} else {
			return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
		}
	}

	/**
	 * 根据旧密码修改密码
	 *
	 * @param
	 * @return
	 */
	@RequestMapping("/updatePasswordUid")
	public QueryResponseResult updatePasswordUid(@RequestBody Password password) {
		User user = userService.findByUid(password.getUid());
		String SqlPassword = user.getPassword();//数据库密码
		String ExpiredPassword = password.getExpiredPassword();//旧密码
		String LatestPassword = password.getLatestPassword();//新密码
		if (SqlPassword.equals(ExpiredPassword)) {
			userService.updatePasswordUid(password.getUid(), LatestPassword);
			return new QueryResponseResult(CommonCode.SUCCESS, null);
		} else {
			return new QueryResponseResult(CommonCode.FAIL, null);
		}
	}

	/**
	 * 根据uid修改头像
	 *
	 * @param
	 * @return
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
		int result = userService.updateInformation(user);
		if (result == 1) {
			return new QueryResponseResult(CommonCode.SUCCESS, null);//修改成功
		} else {
			return new QueryResponseResult(CommonCode.FAIL, null);//修改失败
		}

	}

	/**
	 * 修改旧手机号码短信验证
	 */
	@RequestMapping(value = "/formerPhoneSMS", method = RequestMethod.POST)
	public QueryResponseResult formerPhoneSMS(String phone, String userId, HttpSession session)
			throws Exception {
		String phones = userService.findByIdPhone(userId);
		if (phones.equals(phone)) {
			String verificationCode = GetFourRandom.getFourRandom();
			System.out.println("修改验证码为 " + verificationCode);
			String phoness = AesEncryptUtil.desEncrypt(phone);
			boolean flag = SmsUtils.updatePhone(phoness, verificationCode);
			if (flag) {
				session.setAttribute("formerPhoneVerify", verificationCode);//存入验证码session
				session.setAttribute("formerPhone", phone);//手机号存入session
				sessionUtil.removeAttrbute(session, "formerPhoneVerify");

				return new QueryResponseResult(CommonCode.SUCCESS, null);
			} else {
				return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
			}
		} else {
			return new QueryResponseResult(CommonCode.FAIL, null);
		}
	}

	/**
	 * 验证旧手机是否成功
	 *
	 * @param
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/formerPhone", method = RequestMethod.POST)
	public QueryResponseResult updateFormerPhone(String verification, String phone, HttpSession session) {
		QueryResult queryResult = new QueryResult();
		String formerPhoneVerify = (String) session.getAttribute("formerPhoneVerify");
		String formerPhone = (String) session.getAttribute("formerPhone");
		if (verification.equals(formerPhoneVerify) && phone.equals(formerPhone)) {
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
	public QueryResponseResult newPhoneSMS(String phone, HttpSession session)
			throws Exception {
		User users = userService.findByPhone(phone);
		String formerPhone = (String) session.getAttribute("formerPhone");
		if (phone.equals(formerPhone)) {
			return new QueryResponseResult(CommonCode.same, null);  //手机号于原手机号相同
		}
		if (users != null) {
			return new QueryResponseResult(CommonCode.FALL_USER_REGISTER, null);    //该手机号已经存在
		}
		String FR = GetFourRandom.getFourRandom();  //随机验证码
		System.out.println("修改验证码为 " + FR);
		String phoness=AesEncryptUtil.desEncrypt(phone);
		boolean flag = SmsUtils.updatePhone(phoness, FR);
		if (flag) {
			session.setAttribute("newPhoneVerify", FR);//存入验证码session
			session.setAttribute("newPhone", phone);//手机号存入session
			sessionUtil.removeAttrbute(session, "passwordVerify");
			return new QueryResponseResult(CommonCode.SUCCESS, null);
		} else {
			return new QueryResponseResult(CommonCode.SERVER_ERROR, null);
		}
	}

	/**
	 * 修改手机
	 *
	 * @param
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/updatePhone", method = RequestMethod.POST)
	public QueryResponseResult updatePhone(String verification, String phone, String userId,
			HttpSession session) {
		String newPhoneVerify = (String) session.getAttribute("newPhoneVerify");
		String newPhone = (String) session.getAttribute("newPhone");
		if (verification.equals(newPhoneVerify) && phone.equals(newPhone)) {
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
