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

    /**
     * 添加足迹
     * @param footprint 足迹对象
     * @return
     */
    @RequestMapping(value = "/addShoppingCart",method = RequestMethod.POST)
    public QueryResponseResult addShoppingCart(@RequestBody Footprint footprint) {
        if(footprint==null){
            //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
        int redis =footprintService.addFootprint(footprint);
        if(redis == 1 ){
            //添加成功
            return new QueryResponseResult(CommonCode.SUCCESS, null);
        }else {
            //添加失败
            return new QueryResponseResult(CommonCode.FAIL, null);
        }
    }
}
