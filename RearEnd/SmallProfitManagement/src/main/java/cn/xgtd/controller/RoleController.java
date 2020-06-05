package cn.xgtd.controller;

import cn.xgtd.domain.user.Role;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.list.QueryResponseResult;
import cn.xgtd.response.objectReturn.ObjectReturn;
import cn.xgtd.response.objectReturn.ObjectReturnResponse;
import cn.xgtd.response.pagination.Pagination;
import cn.xgtd.response.pagination.ResponsePagination;
import cn.xgtd.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

/**
 * 权限管理控制层
 * @author Kite
 * @date 2020/6/3
 */
@Controller
@RequestMapping("/RoleController")
@ResponseBody
public class RoleController {


    @Autowired
    RoleService roleService;

    /**
     * 新增角色
     * @param role 角色对象
     * @return
     */
    @RequestMapping(value = "/addRole",method = RequestMethod.POST)
    public QueryResponseResult addRole(@RequestBody Role role){
       Integer result = roleService.addRole(role);
       if (result == 1){
          return new QueryResponseResult(CommonCode.SUCCESS,null);
       }
       return new QueryResponseResult(CommonCode.FAIL,null);
    }


    /**
     * 查询当前用户下的角色
     * @param uId 用户id
     * @return
     */
    @RequestMapping(value = "/findRole",method = RequestMethod.GET)
    public ObjectReturnResponse findRole(Integer uId){
        if (uId == null){
            return new ObjectReturnResponse(CommonCode.INVALID_PARAM,null);
        }
        List<Role> roles = roleService.findRole(uId);
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject(roles);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }



}
