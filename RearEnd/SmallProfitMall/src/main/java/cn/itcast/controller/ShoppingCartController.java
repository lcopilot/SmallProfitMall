package cn.itcast.controller;

import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/ShoppingCartController")
@ResponseBody
public class ShoppingCartController {
    @Autowired
    ShoppingCartService shoppingCartService;

    @Autowired
    QueryResult queryResult;


    //添加购物车
    @RequestMapping(value = "/addShoppingCart",method = RequestMethod.POST)
    public QueryResponseResult addShoppingCart(@RequestBody PurchaseInformation purchaseInformation) {
        if(purchaseInformation==null){
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
        int redis =shoppingCartService.addShoppingCar(purchaseInformation);
        if(redis==1){   //修改成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);//添加成功
        }else {
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
    }

    //查询购物车
    @RequestMapping(value = "/findByUserId/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findByUserId(@PathVariable("userId")String userId) {
        if(userId==null){
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
         List<ShoppingCart> shoppingCart =shoppingCartService.findByUserId(userId);
            queryResult.setList(shoppingCart);
            return new QueryResponseResult(CommonCode.SUCCESS, queryResult);//添加成功
    }

    //删除
    @RequestMapping(value = "/deleteCart/{shoppingCartId}",method = RequestMethod.DELETE)
    public QueryResponseResult deleteCart(@PathVariable("shoppingCartId")Integer shoppingCartId) {
        if (shoppingCartId == null) {
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
        int redis = shoppingCartService.deleteCart(shoppingCartId);
        if (redis == 1) {   //删除成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);//添加成功
        } else {
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
    }

    //查询商品
    @RequestMapping(value = "/findByuId/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findByuId(@PathVariable("userId")String userId) {
        if (userId == null) {
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
        ArrayList redis = shoppingCartService.findByuId(userId);
        queryResult.setTotal(redis.size());
            return new QueryResponseResult(CommonCode.SUCCESS, queryResult);//添加成功

    }
}
