package cn.itcast.controller;

import cn.itcast.domain.address.Address;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequestMapping("/AddressController")
@ResponseBody
public class AddressController {

    @Autowired
    AddressService addressService;


    @Autowired
    QueryResult result;
    /**
     * 新增更新地址
     *
     * @return
     */
    @RequestMapping(value = "/addAddress",method = RequestMethod.POST)
    public QueryResponseResult addAddress(@RequestBody Address address) {
        int addressId =address.getAddressId();
        if(addressId!=0){   //判断添加还是更新 地址id不为0则是更新
            int redis=addressService.updateAddress(address);
            if (redis==1) {
                return new QueryResponseResult(CommonCode.SUCCESS, null);//更新成功
            } else {
                return new QueryResponseResult(CommonCode.FAIL, null);//更新失败
            }
        }
        int redis=addressService.addAddress(address);
       if (redis==1) {
            return new QueryResponseResult(CommonCode.SUCCESS, null);//添加成功
            } else {
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
       }

    }

    //根据id查询用户信息
    @RequestMapping(value = "/findById/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findById(@PathVariable("userId") String userId) {
        List<Address> address =addressService.findById(userId);
        result.setList(address);
        return new QueryResponseResult(CommonCode.SUCCESS, result);//注册成功
    }


}
