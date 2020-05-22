package cn.itcast.service;

import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.domain.ProductDatails.Recommend;

import java.util.List;

public interface ProductDetailsService {
    /**
     * 查询商品详细
     * @param pid 商品id
     * @return 商品详细数据
     */
    public ProductDetailsResult findByPid(int pid);


    /**
     * 商品介绍 商品保障 商品参数
     * @param productId
     * @return
     */
    public ProductDetailsResult findProductDesciption(Integer productId);
    /**
     * 查询商品详细页推荐商品
     * @param productId 商品id
     * @return
     */
    public List<Recommend> findRecommend(Integer productId);

}
