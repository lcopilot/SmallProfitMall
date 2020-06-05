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
    public List<Role> findRole(@Param("uId") Integer uId);
}
