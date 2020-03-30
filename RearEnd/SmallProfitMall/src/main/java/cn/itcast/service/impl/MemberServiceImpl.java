package cn.itcast.service.impl;

import cn.itcast.dao.MemberDao;
import cn.itcast.domain.member.Member;
import cn.itcast.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Kite
 * @date 2020/3/30
 */
@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberDao memberDao;
    /**
     * 用户余额充值
     * @param userId
     * @param balance 要修改余额数量
     * @return
     */
    @Override
    public Integer updateBalance(String userId, Double balance) {
        //查询用户当前余额
        balance = balance+memberDao.findBalance(userId);
        return memberDao.updateBalance(userId,balance);
    }

    /**
     * 查询用户会员信息
     * @param userId
     * @return
     */
    @Override
    public Member findMember(String userId) {
        return memberDao.findMember(userId);
    }

}
