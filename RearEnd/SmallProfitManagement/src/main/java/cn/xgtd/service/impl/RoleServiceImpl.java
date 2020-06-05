package cn.xgtd.service.impl;

import cn.xgtd.dao.RoleDao;
import cn.xgtd.domain.user.Role;
import cn.xgtd.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 角色管理业务层
 * @author Kite
 * @date 2020/6/3
 */
@Service
public class RoleServiceImpl implements RoleService {


    @Autowired
    RoleDao roleDao;

    /**
     * 查询所有当前角色下子节点
     * @param uId 用户id
     * @return
     */
    @Override
    public List<Role> findRole(Integer uId,Integer currentPage , Integer pageSize) {
        Integer start=(currentPage-1)*pageSize;
       List<Role> roles =  roleDao.findRole(uId,start , pageSize);
        return roles;
    }
}
