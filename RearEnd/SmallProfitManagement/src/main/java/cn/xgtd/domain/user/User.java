package cn.xgtd.domain.user;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户
 * @author Kite
 * @date 2020/5/31
 */
public class User implements Serializable {
    /**用户id**/
    private Integer uId ;
    /**用户名**/
    private String userName;
    /**用户密码**/
    private String password;
    /**创建时间**/
    private Date createTime;
    /**角色id**/
    private Integer roleId;
    /**邮箱*/
    private String email;
    /**手机号码**/
    private String phone;
    /**创建Id**/
    private Integer createAuthorId;
    /**创建者名字**/
    private String creatorName;
    /**上次修改时间**/
    private Date lastTime;
    /**上次修改人Id**/
    private Integer lastAuthorId;
    /**修改人名称**/
    private String lastAuthorName;
    /**用户角色**/
    private Role role;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getCreateAuthorId() {
        return createAuthorId;
    }

    public void setCreateAuthorId(Integer createAuthorId) {
        this.createAuthorId = createAuthorId;
    }

    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
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

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
