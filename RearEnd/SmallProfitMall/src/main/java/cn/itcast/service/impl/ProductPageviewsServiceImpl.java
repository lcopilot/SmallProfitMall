package cn.itcast.service.impl;

import cn.itcast.dao.ProductDao;
import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.dao.ProductPageviewsDao;
import cn.itcast.domain.poribuctPageviews.PoribuctPageviews;
import cn.itcast.service.ProductPageviewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author Kite
 * @date 2020/5/17
 */
@Service
public class ProductPageviewsServiceImpl implements ProductPageviewsService {

    /**商品浏览量持久层**/
    @Autowired
    ProductPageviewsDao productPageviewsDao;

    /**商品持久层**/
    @Autowired
    ProductDetailsDao productDetailsDao;
    /**
     * 新增商品浏览量
     * @param poribuctPageviews 浏览记录对象
     * @return
     */
    @Override
    public Integer addProductPageviews(PoribuctPageviews poribuctPageviews){
        poribuctPageviews.setBrowseTime(new Date());

       Integer firstPageviews =  productPageviewsDao.findProductPageviews(poribuctPageviews.getUserIp());
       Integer todayProductPageviews = productPageviewsDao.findTodayProductPageviews(poribuctPageviews.getUserIp());
        if (firstPageviews==0 && todayProductPageviews<3){
            //商品新增浏览记录
            productPageviewsDao.addProductPageviews(poribuctPageviews);
            //商品访问加一
            productDetailsDao.updateProductPageviews(poribuctPageviews.getProductId());
        }

        return 1;
    }
}
