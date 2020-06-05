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
    /**用户id**/
    private Integer uId;
    /**管理范围，返回前端**/
    private String[] menus;
    /**管理范围，数据库数据**/
    private String databaseMenus;
    /**角色名称**/
    private String name;
    /**创建时间**/
    private Date createTime;
    /**创建人**/
    private String createAuthor;
    /**创建者id**/
    private Integer createAuthorId;
    /**上次修改时间**/
    private Date lastTime;
    /**上次修改人**/
    private String lastAuthor;

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
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

    public String getCreateAuthor() {
        return createAuthor;
    }

    public void setCreateAuthor(String createAuthor) {
        this.createAuthor = createAuthor;
    }

    public Integer getCreateAuthorId() {
        return createAuthorId;
    }

    public void setCreateAuthorId(Integer createAuthorId) {
        this.createAuthorId = createAuthorId;
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    public String getLastAuthor() {
        return lastAuthor;
    }

    public void setLastAuthor(String lastAuthor) {
        this.lastAuthor = lastAuthor;
    }
}
