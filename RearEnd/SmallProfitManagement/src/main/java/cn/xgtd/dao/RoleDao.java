package cn.xgtd.dao;

import cn.xgtd.domain.user.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 角色管路持久层
 * @author Kite
 * @date 2020/6/3
 */
@Repository
public interface RoleDao {


    /**
     * 添加角色
     * @param role 角色对象
     * @return
     */
    public Integer addRole(Role role);


    /**
     * 查询指定角色
     * @param role
     * @return
     */
    public Role findRole(Integer role);

    /**
     * 查询当前角色名称数量
     * @param name 角色名称
     * @return
     */
    public Integer findUserRepeat(String name);


    /**
     * 新增关系
     * @param createAuthorId 创建人id
     * @param addedUserId 新增人用户id
     * @return
     */
    public Integer addRoleRelationship(@Param("createAuthorId") Integer createAuthorId,@Param("addedUserId") Integer addedUserId );

    /**
     * 查询所有当前角色下子用户
     * @param uId 用户id
     * @return
     */
    public List<Role> findRoleList(@Param("uId") Integer uId);
}
