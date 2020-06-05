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
     * 查询所有当前角色下子用户
     * @param uId 用户id
     * @param start 开始页
     * @param pageSize 每页查询数量
     * @return
     */
    public List<Role> findRole(@Param("uId") Integer uId, @Param("start") Integer start , @Param("pageSize")  Integer pageSize);
}
