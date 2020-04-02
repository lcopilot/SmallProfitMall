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


    /**
     * 新增更新地址
     * @return
     */
    @RequestMapping(value = "/addAddress",method = RequestMethod.POST)
    public QueryResponseResult addAddress(@RequestBody Address address) {
        QueryResult result = new QueryResult();
        int addressId =address.getAddressId();
        //判断添加还是更新 地址id不为0则是更新
        if(addressId!=0){
            int redis=addressService.updateAddress(address);
            if (redis==1) {
                //更新成功
                return new QueryResponseResult(CommonCode.SUCCESS, null);
            } else {
                //更新失败
                return new QueryResponseResult(CommonCode.FAIL, null);
            }
        }
        int redis=addressService.addAddress(address);
       if (redis==1) {
           //添加成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);
            } else {
           //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
       }

    }

    //根据id查询用户信息
    @RequestMapping(value = "/findById/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findById(@PathVariable("userId") String userId) {
        QueryResult result = new QueryResult();
        List<Address> address =addressService.findById(userId);
        result.setList(address);
        //注册成功
        return new QueryResponseResult(CommonCode.SUCCESS, result);
    }


    //刪除收货地址
    @RequestMapping(value = "/deleteAddress/{userId}/{addressId}/{defaults}",method = RequestMethod.DELETE)
    public QueryResponseResult deleteAddress(@PathVariable("userId")String userId,@PathVariable("addressId")Integer addressId,@PathVariable("defaults")Boolean defaults) {
        int redis = addressService.deleteAddress(userId, addressId, defaults);
        if (redis == 1) {
            //刪除成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        } else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }

    }

    //修改默認地址
    @RequestMapping(value = "/updateDefault",method = RequestMethod.PUT)
    public QueryResponseResult updateDefaults(String userId,Integer addressId) {
        int redis = addressService.updateDefaults(addressId,userId,true);
        if (redis == 1) {
            //修改成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        } else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }
}
