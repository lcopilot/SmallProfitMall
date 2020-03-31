package cn.itcast.dao;

import cn.itcast.domain.member.Member;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * 会员 余额 积分
 * @author Kite
 * @date 2020/3/30
 */
public interface MemberDao {
    /**
     * 修改账户余额
     * @param userId
     * @param balance 要修改余额数量
     * @return
     */
    public Integer updateBalance(@Param("userId") String userId,@Param("balance")String balance);

    /**
     * 查询用户会员信息
     * @param userId
     * @return
     */
    public Member findMember  (@Param("userId") String userId);

    /**
     * 查询用户余额
     * @param userId
     * @return
     */
    public String findBalance(@Param("userId")String userId);

}
