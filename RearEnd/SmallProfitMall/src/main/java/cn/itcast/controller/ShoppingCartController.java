package cn.itcast.controller;

import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.domain.address.Address;
import cn.itcast.domain.shoppingCar.ShoppingCar;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ShoppingCartController")
@ResponseBody
public class ShoppingCartController {
    @Autowired
    ShoppingCartService shoppingCartService;

    @RequestMapping(value = "/addShoppingCart",method = RequestMethod.POST)
    public QueryResponseResult addShoppingCart(@RequestBody ProductDetailsResult ProductDetailsResult) {
        System.out.println(ProductDetailsResult);
//        if(shoppingCar==null){
//            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
//        }
//        int redis =shoppingCartService.addShoppingCar(shoppingCar);
//        if(redis==1){   //修改成功
//            return new QueryResponseResult(CommonCode.SUCCESS, null);//添加成功
//        }else {
//            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
//        }

        return new QueryResponseResult(CommonCode.SUCCESS, null);//添加成功
    }

}
