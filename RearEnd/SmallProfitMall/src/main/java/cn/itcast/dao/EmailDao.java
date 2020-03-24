package cn.itcast.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
//发送邮件
public interface EmailDao {
    //跟新邮箱
    public int addEmail(@Param("uid")String uid, @Param("email")String email);
    //查询是否有邮箱
    public String fendByIdEmail(@Param("uid")String uid);
    //查询邮箱是否存在
    public String fendEmail(@Param("email")String email);
}
