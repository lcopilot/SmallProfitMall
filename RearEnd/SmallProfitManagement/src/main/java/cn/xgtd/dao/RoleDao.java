package cn.xgtd.dao;

import cn.xgtd.domain.user.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * 角色管路持久层
 *
 * @author Kite
 * @date 2020/6/3
 */
@Repository
public interface RoleDao {


    /**
     * 添加角色
     *
     * @param role 角色对象
     * @return
     */
    public Integer addRole(Role role);


    /**
     * 查询指定角色
     *
     * @param role
     * @return
     */
    public Role findRole(Integer role);

    /**
     * 查询当前角色名称数量
     *
     * @param name 角色名称
     * @return
     */
    public Integer findUserRepeat(@Param("name") String name, @Param("rId") Integer rId);


    /**
     * 新增关系
     *
     * @param createAuthorId 创建人id
     * @param addedUserId    新增人用户id
     * @return
     */
    public Integer addRoleRelationship(@Param("createAuthorId") Integer createAuthorId, @Param("addedUserId") Integer addedUserId);

    /**
     * 查询所有当前角色下子用户
     *
     * @param uId 用户id
     * @return
     */
    public List<Role> findRoleList(@Param("uId") Integer uId);


    /**
     * 删除角色
     *
     * @param rId 角色id
     * @return
     */
    public Integer deleteRole(Integer rId);


    /**
     * 修改角色
     *
     * @param role 角色对象
     * @return
     */
    public Integer updateRole(Role role);


    /**
     * 查询多个指定角色
     *
     * @param roleIds
     * @return
     */
    public List<Role> findBasicRole(@Param("roleIds") int[] roleIds);

    /**
     * 查询该角色可创建的角色id
     *
     * @param uId 用户id
     * @return
     */
    public String findRoleIds(Integer uId);

    /**
     * 查询时间
     * @param content 查询内容
     * @param laterTime 之后
     * @param beforeTime 之前
     * @return
     */
    public List<Role> findRoleSearch(@Param("content") String content,@Param("laterTime") String laterTime ,@Param("beforeTime") String beforeTime);


}
