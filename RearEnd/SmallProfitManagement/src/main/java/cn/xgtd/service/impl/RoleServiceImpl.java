package cn.xgtd.service.impl;

import cn.xgtd.dao.RoleDao;
import cn.xgtd.dao.UserDao;
import cn.xgtd.domain.user.Role;
import cn.xgtd.domain.user.User;
import cn.xgtd.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 角色管理业务层
 * @author Kite
 * @date 2020/6/3
 */
@Service
public class RoleServiceImpl implements RoleService {


    /**角色持久层**/
    @Autowired
    RoleDao roleDao;

    /**用户持久层**/
    @Autowired
    UserDao userDao;

    @Override
    public Integer addRole(Role role) {
        //设置创建时间
        role.setCreateTime(new Date());
        //添加角色
        roleDao.addRole(role);

        return 1;
    }



    /**
     * 查询所有当前角色下子节点
     * @param uId 用户id
     * @return
     */
    @Override
    public List<Role> findRole(Integer uId) {

       List<Role> roles =  roleDao.findRole(uId);
        return roles;
    }
}
