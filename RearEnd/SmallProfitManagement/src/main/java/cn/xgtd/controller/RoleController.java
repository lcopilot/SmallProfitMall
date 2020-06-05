package cn.xgtd.controller;

import cn.xgtd.domain.user.Role;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.pagination.Pagination;
import cn.xgtd.response.pagination.ResponsePagination;
import cn.xgtd.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
     * 查询当前角色下子角色
     * @param uId 用户id
     * @return
     */
    @RequestMapping(value = "/findRole",method = RequestMethod.GET)
    public ResponsePagination findRole(Integer uId,Integer currentPage , Integer pageSize){
        if (uId == null){
            return new ResponsePagination(CommonCode.INVALID_PARAM,null);
        }
        if (currentPage == null){
            currentPage = 1;
        }
        if (pageSize == null ){
            pageSize = 3;
        }
        List<Role> roles = roleService.findRole(uId,currentPage,pageSize);
        //总数量
        Integer quantity= roles.size();
        //计算总页数
        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        Pagination pagination = new Pagination();
        pagination.setList(roles);
        pagination.setTotalCount((long) roles.size());
        pagination.setTotalPage(totalPage);
        return new ResponsePagination(CommonCode.SUCCESS,pagination);
    }

}
