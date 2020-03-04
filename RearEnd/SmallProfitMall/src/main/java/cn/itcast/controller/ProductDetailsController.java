package cn.itcast.controller;

import cn.itcast.domain.ProductDetails;
import cn.itcast.domain.ProductDetailsResult;
import cn.itcast.domain.ProductLowPriceResult;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.ProductDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/ProductDetails")
@ResponseBody
public class ProductDetailsController {
    @Autowired
    ProductDetailsService productDetailsService;
    /**
     * 商品详细
     * @return
     */
    @RequestMapping("/productDetailsResult")
    public QueryResponseResult ProductLowPrice(String productId) {
        // 调用service的方法
        ProductDetailsResult productDetails = productDetailsService.findByPid(productId);
        List<ProductDetailsResult> logins= Arrays.asList(productDetails);
        QueryResult<ProductDetailsResult> result = new QueryResult<>();
        result.setList(logins);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

}
