package cn.xgtd.dao;

import cn.xgtd.domain.arrivalNotice.ArrivalNotice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 到货通知持久层
 * @author Kite
 * @date 2020/6/24
 */
public interface ArrivalNoticeDao {

    /**
     * 查询
     * @return
     */
    public List<ArrivalNotice> findArrivalNotice(List<Integer> distinctionId);
}
