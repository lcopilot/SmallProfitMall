package cn.xgtd.domain.user;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 角色管理
 * @author Kite
 * @date 2020/6/3
 */
public class Role implements Serializable {
    /**角色id**/
    private Integer rId;
    /**管理范围，返回前端**/
    private String[] menus;
    /**管理范围，数据库数据**/
    private String databaseMenus;
    /**角色名称**/
    private String name;
    /**创建时间**/
    private Date createTime;
    /**创建人Id**/
    private Integer createAuthorId;
    /**修改人名字**/
    private String createAuthorName;
    /**上次修改时间**/
    private Date lastTime;
    /**上次修改人**/
    private Integer lastAuthorId;
    /**修改人名字**/
    private String lastAuthorName;
    /**基本可选择角色 前端传入**/
    private String[] roleIds;
    /**基本可选择角色 传入数据库**/
    private String roleBasicsId;

    public String getRoleBasicsId() {
        return roleBasicsId;
    }

    public void setRoleBasicsId(String roleBasicsId) {
        this.roleBasicsId = roleBasicsId;
    }

    public String[] getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(String[] roleIds) {
        this.roleIds = roleIds;
    }

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public String[] getMenus() {
        return menus;
    }

    public void setMenus(String[] menus) {
        this.menus = menus;
    }

    public String getDatabaseMenus() {
        return databaseMenus;
    }

    public void setDatabaseMenus(String databaseMenus) {
        this.databaseMenus = databaseMenus;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCreateAuthorId() {
        return createAuthorId;
    }

    public void setCreateAuthorId(Integer createAuthorId) {
        this.createAuthorId = createAuthorId;
    }

    public String getCreateAuthorName() {
        return createAuthorName;
    }

    public void setCreateAuthorName(String createAuthorName) {
        this.createAuthorName = createAuthorName;
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    public Integer getLastAuthorId() {
        return lastAuthorId;
    }

    public void setLastAuthorId(Integer lastAuthorId) {
        this.lastAuthorId = lastAuthorId;
    }

    public String getLastAuthorName() {
        return lastAuthorName;
    }

    public void setLastAuthorName(String lastAuthorName) {
        this.lastAuthorName = lastAuthorName;
    }
}
