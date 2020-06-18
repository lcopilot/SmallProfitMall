package cn.xgtd.controller;

import cn.xgtd.domain.product.*;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.Results;
import cn.xgtd.response.Return.ResultContent;
import cn.xgtd.response.pagination.Pagination;
import cn.xgtd.response.pagination.ResponsePagination;
import cn.xgtd.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
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
     *查询所有商品详细信息
     * @return
     */
    @RequestMapping(value = "/findDetailsList",method = RequestMethod.GET)
    public ResponsePagination findDetails(Integer currentPage,Integer pageSize){
        if (currentPage==null || currentPage==0){
            currentPage=1;
        }
        //判断传入每页显示数量 为空则默认为8条
        if (pageSize==null || pageSize == 0){
            pageSize=8;
        }
        Pagination pagination = new Pagination();
        List<ProductDetails> basicProducts = productService.findDetails(currentPage,pageSize);
        //查询总数量跟总页数 数组0为总数量 1 为总页数
        Integer[] totalPage=productService.fendTotalPage(pageSize);
        pagination.setTotalCount(totalPage[0].longValue());
        pagination.setTotalPage((int) totalPage[1].longValue());
        pagination.setList(basicProducts);
        return new ResponsePagination(CommonCode.SUCCESS,pagination);

    }

    /**
     * 查询所有商品分类
     * @return
     */
    @RequestMapping(value = "/findCategory",method = RequestMethod.GET)
    public ResultContent findCategory() {
        Results results = new Results();
        List<ProductCategory> productDistinction = productService.findCategory();
        results.setData(productDistinction);
        return new ResultContent(CommonCode.SUCCESS,results);
    }


    /**
     * 添加商品
     * @param productDetails 商品类
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "addProduct",method = RequestMethod.POST)
    public ResultContent addProduct(@RequestBody ProductDetails productDetails) throws IOException {
        Results results = new Results();
        Details productContexts = productService.addProduct(productDetails);
        results.setData(productContexts);
        return new ResultContent(CommonCode.SUCCESS,results);
    }


//    public ResultContent updateProductContext(ProductDetails productDetails){
//
//    }

    /**
     * 查询所有商品属性种类
     * @return
     */
    @RequestMapping(value = "findAttributeType",method = RequestMethod.GET)
    public ResultContent findAttributeType(){
        Results results = new Results();
        List<AttributeType> attributeTypes = productService.findAttributeType();
        results.setData(attributeTypes);
        return new ResultContent(CommonCode.SUCCESS,results);
    }

}
