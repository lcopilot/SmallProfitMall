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


    /**
     * 添加购物车
     * @param purchaseInformation
     * @return
     */
    @RequestMapping(value = "/addShoppingCart",method = RequestMethod.POST)
    public QueryResponseResult addShoppingCart(@RequestBody PurchaseInformation purchaseInformation) {
        QueryResult queryResult = new QueryResult();
        if(purchaseInformation==null){
            //传入参数为空
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        if (purchaseInformation.getQuantity()>99){
            //添加商品失败 单个商品大于99
            return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
        }

        int[] redis =shoppingCartService.addShoppingCar(purchaseInformation);
        if(redis[0]==1){
            //添加成功
            queryResult.setTotal(redis[1]);
            return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
        }else if (redis[1]==2){
            //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }else if (redis[0]==3){
            //添加失败
            return new QueryResponseResult(CommonCode.INVALID_PARAM, null);
        }
        return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
    }

    /**
     * 查询购物车
     * @param userId
     * @return
     */
    @RequestMapping(value = "/findByUserId/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findByUserId(@PathVariable("userId")String userId) {
        QueryResult queryResult = new QueryResult();
        if(userId==null){
            //传入参数为空
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
         List<ShoppingCart> shoppingCart =shoppingCartService.findByUserId(userId);
            queryResult.setList(shoppingCart);
            queryResult.setTotal(shoppingCart.size());
            return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
    }

    /**
     * 删除购物车
     * @param cartIdList
     * @return
     */
    @RequestMapping(value = "/deleteCart/{shoppingCartId}",method = RequestMethod.DELETE)
    public QueryResponseResult deleteCart(@PathVariable("shoppingCartId")int[] cartIdList) {
        if (cartIdList== null) {
            //查询传入参数为空
            return new QueryResponseResult(CommonCode.FAIL, null);
        }

        int redis = shoppingCartService.deleteCart(cartIdList);
        if (redis == 1) {
            //删除购物车成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        } else {
            //删除购物车失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
    }

    /**
     * 查询商品数量
     * @param userId
     * @return
     */
    @RequestMapping(value = "/findByuId/{userId}",method = RequestMethod.GET)
    public QueryResponseResult findByuId(@PathVariable("userId")String userId) {
        if (userId == null) {
            //传入参数为空
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        ArrayList redis = shoppingCartService.findByuId(userId);
        QueryResult queryResult = new QueryResult();
        queryResult.setTotal(redis.size());
        //查询成功
        return new QueryResponseResult(CommonCode.SUCCESS, queryResult);
    }

    /**
     * 添加到货通知
     */
    @RequestMapping(value = "/addArrivalNotice/{userId}/{productId}",method = RequestMethod.POST)
    public QueryResponseResult addArrivalNotice(@PathVariable("userId")String userId,@PathVariable("productId") int productId){
        if (userId ==null && productId ==0){
            //传入参数为空
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        int redis = shoppingCartService.addArrivalNotice(userId,productId);
        QueryResult queryResult = new QueryResult();
        if (redis==1){
            return  new QueryResponseResult(CommonCode.SUCCESS, queryResult);
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     *修改商品数量
     */
    @RequestMapping(value = "/updateQuantity/{quantity}/{shoppingCartId}",method = RequestMethod.PUT)
    public QueryResponseResult updateQuantity(@PathVariable("quantity")int quantity,@PathVariable("shoppingCartId") int shoppingCartId){
        if (quantity == 0 && shoppingCartId == 0){
            //传入参数为空
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        int redis = shoppingCartService.updateQuantity(quantity,shoppingCartId);
        QueryResult queryResult = new QueryResult();
        if (redis==1){
            return  new QueryResponseResult(CommonCode.SUCCESS, queryResult);
        }else {
            return new QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     *修改商品数量
     */
    @RequestMapping(value = "/findPreview/{userId}/{Start}/{Ends}",method = RequestMethod.GET)
    public QueryResponseResult findPreview(@PathVariable("userId")String userId,@PathVariable("Start") String Start,
                                           @PathVariable("Ends")String Ends){
        if (userId == null){
            //传入参数为空
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        if (Start==null){
            Start="0";
        }
        if (Ends==null){
            Ends="4";
        }
        List<ShoppingCart> redis = shoppingCartService.findPreview(userId,Integer.parseInt(Start),Integer.parseInt(Ends));
        QueryResult queryResult = new QueryResult();
        queryResult.setList(redis);
        queryResult.setTotal(redis.size());
        return  new QueryResponseResult(CommonCode.SUCCESS, queryResult);

    }

}
