package cn.xgtd.controller;

import cn.xgtd.domain.user.Role;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.objectReturn.Results;
import cn.xgtd.response.objectReturn.ResultContent;
import cn.xgtd.service.RoleService;
import cn.xgtd.util.redis.RedisUtil;
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
    RedisUtil redisUtil ;

    @Autowired
    RoleService roleService;

    /**
     * 新增角色
     * @param role 角色对象
     * @return 新增角色信息
     */
    @RequestMapping(value = "/addRole",method = RequestMethod.POST)
    public ResultContent addRole(@RequestBody Role role){
       Role result = roleService.addRole(role);
       if (result == null ){
          return new ResultContent(CommonCode.FAIL,null);
       }else {
           Results results = new Results();
           results.setData(result);
           return new ResultContent(CommonCode.SUCCESS,results);
       }

    }


    /**
     * 查询当前用户下的角色
     * @param uId 用户id
     * @return
     */
    @RequestMapping(value = "/findRole/{uId}",method = RequestMethod.GET)
    public ResultContent findRole(@PathVariable("uId") Integer uId){

        if (uId == null){
            return new ResultContent(CommonCode.INVALID_PARAM,null);
        }
        List<Role> roles = roleService.findRoleList(uId);
        Results results = new Results();
        results.setData(roles);
        return new ResultContent(CommonCode.SUCCESS,results);
    }


    /**
     * 删除角色
     * @param rId 角色id
     * @return 该角色有绑定的用户返回用户名
     */
    @RequestMapping(value = "/deleteRole/{rId}", method = RequestMethod.DELETE)
    public ResultContent deleteRole(@PathVariable("rId") Integer rId){
        List<String> result = roleService.deleteRole(rId);
        if (result != null){
            Results results = new Results();
            results.setData(result);
            return new ResultContent(CommonCode.FAIL,results);
        }
        return new ResultContent(CommonCode.SUCCESS,null);
    }

    /**
     * 确认删除角色且删除用户
     * @param rId 角色id
     * @return
     */
    @RequestMapping(value = "/deleteRoleUser/{rId}", method = RequestMethod.DELETE)
    public ResultContent deleteRoleUser(@PathVariable("rId") Integer rId){
        Integer result = roleService.deleteRoleUser(rId);
        if (result > 0){
            return new ResultContent(CommonCode.SUCCESS,null);
        }
        return new ResultContent(CommonCode.FAIL,null);
    }


    /**
     * 修改角色
     * @param role 角色
     * @return
     */
    @RequestMapping(value = "/updateRole", method = RequestMethod.PUT)
    public ResultContent updateRole(@RequestBody Role role){
        Role result = roleService.updateRole(role);
        if (result != null){
            Results results = new Results();
            results.setData(result);
            return new ResultContent(CommonCode.SUCCESS,results);
        }
        return new ResultContent(CommonCode.FAIL,null);
    }

    /**
     * 查询无创建角色权限角色可赋予用户的角色
     * @param uId 角色id
     * @return
     */
    @RequestMapping(value = "/findBasicsRole/{uId}",method = RequestMethod.GET)
    public ResultContent findBasicsRole(@PathVariable("uId") Integer uId){
        Results results = new Results();
        List<Role> role = roleService.findBasicsRole(uId);
        results.setData(role);
        return new ResultContent(CommonCode.SUCCESS,results);
    }


    /**
     * 搜索角色
     * @param content 查询内容
     * @param laterTime 之后
     * @param beforeTime 之前
     * @return
     */
    @RequestMapping(value = "/findRoleSearch",method = RequestMethod.GET)
    public ResultContent findRoleSearch(String content, String laterTime, String beforeTime){
         if (laterTime.equals("")){
            laterTime = null;
        }
        if (beforeTime.equals("")){
            beforeTime = null;
        }
        List<Role> roles = roleService.findRoleSearch(content,laterTime,beforeTime);
        Results results = new Results();
        results.setData(roles);
        return new ResultContent(CommonCode.SUCCESS,results);
    }

}
