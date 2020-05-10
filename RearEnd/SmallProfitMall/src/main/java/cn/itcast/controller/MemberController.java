package cn.itcast.controller;

import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.domain.member.Member;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.response.objectReturn.ObjectReturn;
import cn.itcast.response.objectReturn.ObjectReturnResponse;
import cn.itcast.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

/**
 * @author Kite
 * @date 2020/3/30
 */
@Controller
@RequestMapping("/MemberController")
@ResponseBody
public class MemberController {

    @Autowired
    MemberService memberService;

    /**
     * 用户充值接口
     * @param userId 用户id
     * @param balance 充值金额
     * @return
     */
    @RequestMapping(value = "/updateBalance",method = RequestMethod.POST)
    public QueryResponseResult updateBalance(String userId,String balance) throws Exception {
        // 调用service的方法
       Integer redis = memberService.updateBalance(userId,balance);
      if (redis==1){
          return  new QueryResponseResult(CommonCode.SUCCESS,null);
      }else {
          return new QueryResponseResult(CommonCode.FAIL,null);
      }
    }

    /**
     * 查询用户会员信息
     * @param userId
     * @return
     */
    @RequestMapping(value = "/findMember/{userId}",method =RequestMethod.GET)
    public ObjectReturnResponse findMember(@PathVariable("userId") String userId) throws Exception {
        Member members = memberService.findMember(userId);
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject(members);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

}
