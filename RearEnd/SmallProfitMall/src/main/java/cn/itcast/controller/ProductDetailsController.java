package cn.itcast.controller;

import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.response.objectReturn.ObjectReturn;
import cn.itcast.response.objectReturn.ObjectReturnResponse;
import cn.itcast.service.ProductDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

/**
 * 商品详细控制层
 * @author krty
 */
@Controller
@RequestMapping("/ProductDetails")
@ResponseBody
public class ProductDetailsController {

    /**商品消息业务层**/
    @Autowired
    ProductDetailsService productDetailsService;

    
    /**
     * 商品详细
     * @return
     */
    @RequestMapping("/productDetailsResult/{productId}")
    public ObjectReturnResponse ProductLowPrice(@PathVariable("productId") Integer productId) {
        // 调用service的方法
        ProductDetailsResult productDetails = productDetailsService.findByPid(productId);
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject(productDetails);
        return  new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

    /**
     * 商品介绍
     * @param productId
     * @return
     */
    @RequestMapping("/findProductDesciption/{productId}")
    public ObjectReturnResponse findProductDesciption(@PathVariable("productId")Integer productId){
        ProductDetailsResult productProductDesciption = productDetailsService.findProductDesciption(productId);
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject(productProductDesciption);
        return  new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }


    /**
     * 推荐商品
     * @param productId
     * @return
     */
    @RequestMapping(value = "/findRecommend/{productId}",method = RequestMethod.GET)
    public ObjectReturnResponse findRecommend(@PathVariable("productId") Integer productId){
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject( productDetailsService.findRecommend(productId));
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

}
