package cn.itcast.service;

import cn.itcast.domain.member.Member;
import org.apache.ibatis.annotations.Param;

/**
 * 会员信息
 * @author Kite
 * @date 2020/3/30
 */
public interface MemberService {
    /**
     * 修改账户余额
     * @param userId
     * @param balance 要修改余额数量
     * @return
     */
    public Integer updateBalance(String userId, String balance) throws Exception;

    /**
     * 查询用户会员信息
     * @param userId
     * @return
     */
    public Member findMember ( String userId) throws Exception;

}
