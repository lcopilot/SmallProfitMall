package cn.xgtd.controller;

import cn.xgtd.domain.product.Product;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.objectReturn.ObjectReturn;
import cn.xgtd.response.objectReturn.ObjectReturnResponse;
import cn.xgtd.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 商品控制层
 * @author Kite
 * @date 2020/6/6
 */
@Controller
@RequestMapping("/ProductController")
@ResponseBody
public class ProductController {

    /**商品业务层**/
    @Autowired
    ProductService productService;

    /**
     * 查询所有商品
     * @return
     */
    @RequestMapping(value = "/findProductList",method = RequestMethod.GET)
    public ObjectReturnResponse findProductList(){
        ObjectReturn objectReturn = new ObjectReturn();
        List<Product> products = productService.findProductList();
        objectReturn.setObject(products);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }
}
