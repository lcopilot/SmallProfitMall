package cn.xgtd.service;

import cn.xgtd.dao.RoleDao;
import cn.xgtd.domain.user.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 角色管理业务层
 * @author Kite
 * @date 2020/6/3
 */
public interface RoleService {
    /**
     * 查询所有当前角色下子节点
     * @param rId 角色id
     * @return 角色集合
     */
    public List<Role> findRole(Integer rId,Integer currentPage , Integer pageSize);

}
