package cn.itcast.controller;

import cn.itcast.domain.address.Address;
import cn.itcast.domain.user.User;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/AddressController")
@ResponseBody
public class AddressController {

    @Autowired
    AddressService addressService;
    /**
     * 新增地址
     *
     * @return
     */
    @RequestMapping("/addAddress")
    public QueryResponseResult addAddress(@RequestBody Address address) {
        System.out.println(address);
         int redis=addressService.addAddress(address);
       if (redis==1) {
            return new QueryResponseResult(CommonCode.SUCCESS, null);//注册成功
            } else {
            return new QueryResponseResult(CommonCode.FAIL, null);//注册失败
       }
    }
}
