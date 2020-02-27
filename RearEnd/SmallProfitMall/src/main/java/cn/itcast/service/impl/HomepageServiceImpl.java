package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.Navigation;
import cn.itcast.domain.Navigation_2;
import cn.itcast.domain.RotationChart;
import cn.itcast.service.HomepageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service("homepageService")
public class HomepageServiceImpl implements HomepageService {

    @Autowired
    private HomepageDao homepageDao;
//
//    private JedisClientSingle jedisClientSingle = new JedisClientSingle();
//
//    private  SerializeUtil serializeUtil = new SerializeUtil();
//


    //轮播图
    @Override
    public List<RotationChart> findRotationChart() {
        return homepageDao.findRotationChart();
    }

    //导航栏
    @Override
    public List<Navigation> findNavigation() {
        return homepageDao.findNavigation();
    }


    @Override
    public List<Navigation_2> findNavigation2() {
//        if (true){
//            List<Navigation_2> list = homepageDao.findNavigation2();
//           serializeUtil.serializeList(list);
//            //存储缓存
//            System.out.println("222222222");
//            jedisClientSingle.setList("aaa", list);
//            System.out.println("11111");
//            return list;
//        }else {
//            System.out.println("缓存中取");
//            //取缓存
//            List<Navigation_2> list = (List<Navigation_2>) jedisClientSingle.getList("Navigation_2");
//            System.out.println(list.get(0));
//            return list;
       // }
        return  null;
    }


}

