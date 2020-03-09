package cn.itcast.controller;

import cn.itcast.domain.ProductDatails.ProductBasis;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.service.ProductDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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

    @Autowired
    QueryResult result;
    /**
     * 商品详细
     * @return
     */
    @RequestMapping("/productDetailsResult/{productId}")
    public QueryResponseResult ProductLowPrice(@PathVariable("productId") int productId) {
        // 调用service的方法
        List<ProductDetailsResult> productDetails = productDetailsService.findByPid(productId);
        QueryResult<ProductDetailsResult> result = new QueryResult<>();
        result.setList(productDetails);
        return  new QueryResponseResult(CommonCode.SUCCESS,result);
    }

}
