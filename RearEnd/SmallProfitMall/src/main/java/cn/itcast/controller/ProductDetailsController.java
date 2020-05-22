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
    public QueryResponseResult ProductLowPrice(@PathVariable("productId") Integer productId) {
        // 调用service的方法
        List<ProductDetailsResult> productDetails = productDetailsService.findByPid(productId);
        QueryResult<ProductDetailsResult> result = new QueryResult<>();
        result.setList(productDetails);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }


    /**
     * 推荐商品
     * @param productId
     * @return
     */
    @RequestMapping("/findRecommend/{productId}")
    public ObjectReturnResponse findRecommend(@PathVariable("productId") Integer productId){
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject( productDetailsService.findRecommend(productId));
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

}
