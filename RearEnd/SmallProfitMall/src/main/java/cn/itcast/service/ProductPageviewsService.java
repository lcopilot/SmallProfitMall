package cn.itcast.service;

import cn.itcast.domain.poribuctPageviews.PoribuctPageviews;

/**
 * @author Kite
 */
public interface ProductPageviewsService {

    /**
     * 新增商品浏览量
     * @param poribuctPageviews 浏览记录对象
     * @return
     */
    public Integer addProductPageviews(PoribuctPageviews poribuctPageviews);
}
