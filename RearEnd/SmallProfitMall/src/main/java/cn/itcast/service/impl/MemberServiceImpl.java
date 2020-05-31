package cn.itcast.service.impl;

import cn.itcast.dao.MemberDao;
import cn.itcast.domain.member.Member;
import cn.itcast.service.MemberService;
import cn.itcast.util.encryption.AesEncryptUtil;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

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
     * @return 修改行数
     */
    @Override
    public Integer updateBalance(String userId, String balance) throws Exception {
        //查询用户当前余额
        String desEncrypt= memberDao.findBalance(userId);
        //解密当前余额
        if (desEncrypt!=null && !"".equals(desEncrypt)){
           desEncrypt =  AesEncryptUtil.desEncrypt(desEncrypt);
        }else {
            desEncrypt="0.00";
        }
        //解密传过来的余额
        String recharge =AesEncryptUtil.desEncrypt(balance);
        //充值金额加上商户上的余额
        BigDecimal b1 = new BigDecimal(recharge);
        BigDecimal b2 = new BigDecimal(desEncrypt);
        //账户金额跟充值金额相加 限制进度为后两位
        String total =b1.add(b2).setScale(2, BigDecimal.ROUND_HALF_UP).toString();
        //加密金额
        total =  AesEncryptUtil.encrypt(total);
        return memberDao.updateBalance(userId,total);
    }

    /**
     * 查询用户会员信息
     * @param userId
     * @return
     */
    @Override
    public Member findMember(String userId) throws Exception {
        Member member =  memberDao.findMember(userId);
        String  balance= member.getBalance();
        if (balance==null){
            balance = "nUOli9QRvUPflIt/kg9mOQ==";
        }
        String balances =  AesEncryptUtil.desEncrypt(balance);
        member.setBalance(balances);
        return member;
    }

}
