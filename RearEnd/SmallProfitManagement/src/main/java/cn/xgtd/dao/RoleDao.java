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
     * 查询所有当前角色下子节点
     * @param rId 角色id
     * @return 角色集合
     */
    public List<Role> findRole(@Param("rId") Integer rId, @Param("start") Integer start , @Param("pageSize")  Integer pageSize);
}
