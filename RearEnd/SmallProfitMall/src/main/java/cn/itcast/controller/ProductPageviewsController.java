package cn.itcast.controller;

import cn.itcast.domain.poribuctPageviews.PoribuctPageviews;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.service.ProductPageviewsService;
import cn.itcast.util.verify.IPUtil;
import com.aliyuncs.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 浏览商品记录控制层
 * @author Kite
 * @date 2020/5/17
 */
@Controller
@RequestMapping("/ProductPageviewsController")
@ResponseBody
public class ProductPageviewsController {
    /**浏览记录业务层**/
    @Autowired
    ProductPageviewsService productPageviewsService;

    @RequestMapping(value = "addProductPageviews",method = RequestMethod.POST)
    public QueryResponseResult addProductPageviews(@RequestBody PoribuctPageviews poribuctPageviews, HttpServletRequest request){
        poribuctPageviews.setUserIp(request.getRemoteAddr());

        productPageviewsService.addProductPageviews(poribuctPageviews);
        return new QueryResponseResult(CommonCode.SUCCESS,null);
    }
}
