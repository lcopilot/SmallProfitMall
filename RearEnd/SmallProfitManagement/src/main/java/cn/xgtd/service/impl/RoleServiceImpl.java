package cn.xgtd.service.impl;

import cn.xgtd.dao.RoleDao;
import cn.xgtd.dao.UserDao;
import cn.xgtd.domain.user.Role;
import cn.xgtd.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
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


    /**
     * 创建角色
     * @param role 角色对象
     * @return 当前创建的角色
     */
    @Override
    public Role addRole(Role role) {

        //判断当前角色是否存在
        Integer result = roleDao.findUserRepeat(role.getName());
        if (result>0){
            return null;
        }
        //设置创建时间
        role.setCreateTime(new Date());
        //设置授权时间
        role.setLastTime(new Date());
        role.setLastAuthorId(role.getCreateAuthorId());
        String databaseMenus = String.join(",", role.getMenus());
        role.setDatabaseMenus(databaseMenus);

        if (role.getRoleIds()!=null){
            String roleId = String.join(",", role.getRoleIds());
            role.setRoleBasicsId(roleId);
        }
        //添加角色
        roleDao.addRole(role);
        Role roles = roleDao.findRole(role.getrId());
        Role roles1 = updateRoleFormat(roles);
        return roles1;
    }

    /**
     * 查询所有当前角色下子节点
     * @param uId 用户id
     * @return
     */
    @Override
    public List<Role> findRoleList(Integer uId) {


       List<Role> roles =  roleDao.findRoleList(uId);
        roles = updateRoleFormat(roles);


        return roles;
    }

    /**
     * 删除角色
     * @param rId 角色id
     * @return
     */
    @Override
    public Integer deleteRole(Integer rId) {
        return roleDao.deleteRole(rId);
    }

    /**
     * 修改角色
     * @param role 角色对象
     * @return
     */
    @Override
    public Integer updateRole(Role role) {

        //判断当前角色是否存在
        Integer result = roleDao.findUserRepeat(role.getName());
        if (result>0){
            return null;
        }

        role.setLastTime(new Date());
        Integer results = roleDao.updateRole(role);
        return results;
    }

    /**
     * 查询无权限创建角色角色可赋予用户的角色
     * @param uId 角色id
     * @return
     */
    @Override
    public List<Role> findBasicsRole(Integer uId) {


        List<Role> roles = roleDao.findRoleList(uId);
        roles = updateRoleFormat(roles);

        //查询基本可可选角色
        String rIds = roleDao.findRoleIds(uId);
        List<Role> basicRole = new ArrayList<>();

        if (rIds != null && !"".equals(rIds)) {
            String[] result = result = rIds.split(",");
            int[] rIdArray = Arrays.stream(result).mapToInt(Integer::parseInt).toArray();
            basicRole = roleDao.findBasicRole(rIdArray);
        }

        for (int i = 0; i < basicRole.size(); i++) {
            if (roles != basicRole.get(i)) {
                roles.add(basicRole.get(i));
            }
        }

        return roles;
    }


    /**
     * 修改角色权限格式
     * @param role
     * @return
     */
    public Role updateRoleFormat(Role role){
        if (role.getDatabaseMenus()==null){
            String [] menus= {};
            role.setMenus(menus);
        }else {
            String[] menus = role.getDatabaseMenus().split(",");
            role.setDatabaseMenus(null);
            role.setMenus(menus);
        }

        if (role.getRoleBasicsId()!=null){
            String[] roleIds = role.getRoleBasicsId().split(",");
            role.setRoleIds(roleIds);
        }
        return role;
    }


    /**
     * 修改角色权限格式
     * @param role
     * @return
     */
    public List<Role> updateRoleFormat(List<Role> role){
        for (int i = 0; i <role.size() ; i++) {
            if (role.get(i).getDatabaseMenus()==null){
                String [] menus= {};
                role.get(i).setMenus(menus);
            }else {
                String[] menus = role.get(i).getDatabaseMenus().split(",");
                role.get(i).setDatabaseMenus(null);
                role.get(i).setMenus(menus);
            }

            if (role.get(i).getRoleBasicsId()!=null){
                String[] roleIds = role.get(i).getRoleBasicsId().split(",");
                role.get(i).setRoleIds(roleIds);
            }
        }

        return role;
    }
}
