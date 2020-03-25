package cn.itcast.controller;

import cn.itcast.domain.footprint.Footprint;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.service.FootprintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/FootprintController")
@ResponseBody
public class FootprintController {
    @Autowired
    FootprintService footprintService;
    //添加足迹
    @RequestMapping(value = "/addShoppingCart",method = RequestMethod.POST)
    public QueryResponseResult addShoppingCart(@RequestBody Footprint footprint) {
        if(footprint==null){
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
        int redis =footprintService.addFootprint(footprint);
        if(redis == 1 ){   //添加成功成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);//添加成功
        }else {
            return new QueryResponseResult(CommonCode.FAIL, null);//添加失败
        }
    }
}
