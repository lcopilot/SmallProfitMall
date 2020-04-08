package cn.itcast.dao;

import cn.itcast.domain.member.ConsumptionRecords;
import cn.itcast.domain.member.Member;
import cn.itcast.domain.webSocket.Connection;
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

    /**
     * 用户注册时候新增
     * @param userId
     * @return
     */
    public Integer addUser(@Param("userId")String userId);

    /**
     * 新增消费记录
     * @param consumptionRecords 消费实体类
     * @return 影响行数
     */
    public Integer addConsumptionRecords(ConsumptionRecords consumptionRecords);

    /**
     * 查询消费记录
     * @param userId 用户id
     * @param orderId 订单id
     * @return 消费记录对象
     */
    public ConsumptionRecords findConsumptionRecords(@Param("userId") String userId ,@Param("orderId") String orderId);

}
