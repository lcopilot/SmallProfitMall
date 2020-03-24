package cn.itcast.service.impl;

import cn.itcast.dao.FootprintDao;
import cn.itcast.domain.footprint.Footprint;
import cn.itcast.service.FootprintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.crypto.Data;
import java.util.Date;

//足迹
@Service
public class FootprintServiceImpl implements FootprintService {

    @Autowired
    private FootprintDao footprintDao;

    //添加足迹
    public int addFootprint(Footprint footprint){
        String footprintId = footprintDao.findProduct(footprint.getProductId());
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

}
