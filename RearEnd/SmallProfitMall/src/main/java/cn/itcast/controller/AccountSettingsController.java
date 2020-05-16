package cn.itcast.controller;

import cn.itcast.domain.accountSettings.AccountSettings;
import cn.itcast.domain.user.Password;
import cn.itcast.domain.user.User;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.AccountSettingsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;

/**
 * 用户会员信息控制层
 * @author Kite
 * @date 2020/4/1
 */
@Controller
@RequestMapping("/AccountSettingsController")
@ResponseBody
public class AccountSettingsController {

    @Autowired
    AccountSettingsService accountSettingsService;

    /**
     * 修改支付密码
     * @param userId 用户id
     * @param paymentPassword 需要修改的密码
     * @return
     */
    @RequestMapping(value = "/updatePaymentPassword" , method = RequestMethod.PUT)
    public QueryResponseResult updatePaymentPassword(String userId,String paymentPassword){
        Integer result =  accountSettingsService.updatePaymentPassword(userId, paymentPassword);
        if (result==1){
            return new QueryResponseResult(CommonCode.SUCCESS,null);
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     * 查询用户账户信息
     * @param userId 用户Id
     * @return
     */
    @RequestMapping(value = "/findAccountSettings/{userId}" , method = RequestMethod.GET)
    public QueryResponseResult findAccountSettings(@PathVariable("userId") String userId){
       AccountSettings accountSettings = accountSettingsService.findAccountSettings(userId);
        QueryResult queryResult = new QueryResult();
        queryResult.setList(Arrays.asList(accountSettings));
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }


    /**
     *修改登录密码
     * @param
     * @return
     */
    @RequestMapping(value = "/updatePassword",method = RequestMethod.PUT)
    public QueryResponseResult updatePassword( String userId, String password) {

       Integer result = accountSettingsService.updatePassword(userId,password);
        if (result==1){
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

}
