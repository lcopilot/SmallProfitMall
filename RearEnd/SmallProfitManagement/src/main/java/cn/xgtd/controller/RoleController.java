package cn.xgtd.controller;

import cn.xgtd.domain.user.Role;
import cn.xgtd.domain.user.User;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.list.QueryResponseResult;
import cn.xgtd.response.objectReturn.ObjectReturn;
import cn.xgtd.response.objectReturn.ObjectReturnResponse;
import cn.xgtd.response.pagination.Pagination;
import cn.xgtd.response.pagination.ResponsePagination;
import cn.xgtd.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


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
     * @return 新增角色信息
     */
    @RequestMapping(value = "/addRole",method = RequestMethod.POST)
    public ObjectReturnResponse addRole(@RequestBody Role role){
       Role result = roleService.addRole(role);
       if (result == null ){
          return new ObjectReturnResponse(CommonCode.FAIL,null);
       }else {
           ObjectReturn objectReturn = new ObjectReturn();
           objectReturn.setObject(result);
           return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
       }

    }


    /**
     * 查询当前用户下的角色
     * @param uId 用户id
     * @return
     */
    @RequestMapping(value = "/findRole/{uId}",method = RequestMethod.GET)
    public ObjectReturnResponse findRole(@PathVariable("uId") Integer uId){
        if (uId == null){
            return new ObjectReturnResponse(CommonCode.INVALID_PARAM,null);
        }
        List<Role> roles = roleService.findRoleList(uId);
        ObjectReturn objectReturn = new ObjectReturn();
        objectReturn.setObject(roles);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }


    /**
     * 删除用户
     * @param rId 角色id
     * @return
     */
    @RequestMapping(value = "/deleteRole/{rId}", method = RequestMethod.DELETE)
    public ObjectReturnResponse deleteRole(@PathVariable("rId") Integer rId){
        Integer result = roleService.deleteRole(rId);
        if (result != null){
            return new ObjectReturnResponse(CommonCode.SUCCESS,null);
        }
        return new ObjectReturnResponse(CommonCode.FAIL,null);
    }

    /**
     * 修改角色
     * @param role 角色
     * @return
     */
    @RequestMapping(value = "/updateRole", method = RequestMethod.PUT)
    public ObjectReturnResponse updateRole(@RequestBody Role role){
        Integer result = roleService.updateRole(role);
        if (result != null){
            return new ObjectReturnResponse(CommonCode.SUCCESS,null);
        }
        return new ObjectReturnResponse(CommonCode.FAIL,null);
    }

}
