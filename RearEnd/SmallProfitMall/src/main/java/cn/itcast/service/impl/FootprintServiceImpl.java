package cn.itcast.service.impl;

import cn.itcast.dao.FootprintDao;
import cn.itcast.domain.footprint.Footprint;
import cn.itcast.service.FootprintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 足迹
 */
@Service
public class FootprintServiceImpl implements FootprintService {

    @Autowired
    private FootprintDao footprintDao;

    /**
     * 添加足迹
     * @param footprint 足迹对象
     * @return
     */
    @Override
    public int addFootprint(Footprint footprint){
        String footprintId = footprintDao.findFootprintId(footprint.getProductId());
        if (footprintId == null){
            footprint.setFootprintTime(new Date());
            int redis = footprintDao.addFootprint(footprint);
            return redis;
        }else {
            int footprintIds = Integer.parseInt(footprintId);
            int redis = footprintDao.updateTime(footprintIds,new Date());
            return redis;
        }
    }

    /**
     * 查询足迹
     * @param userId 用户id
     * @param currentPage 当前页
     * @param pageSize 查询多少页
     * @return
     */
    @Override
    public List<Footprint> fendFootprint(String userId, Integer currentPage, Integer pageSize) {
        //开始页
        Integer start=(currentPage-1)*pageSize;
        List<Footprint> footprints = footprintDao.fendFootprint(userId,start,pageSize);
        return footprints;
    }

    /**
     * 查询足迹数量
     * @param userId
     * @return TotalPage[0]为总数量 TotalPage[1]为种总页数
     */
    @Override
    public Integer[] fendTotalPage(String userId,Integer pageSize){
        Integer[] TotalPage=new Integer[2];
        Integer quantity = footprintDao.fendFootprintQuantity(userId);
        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }

}
