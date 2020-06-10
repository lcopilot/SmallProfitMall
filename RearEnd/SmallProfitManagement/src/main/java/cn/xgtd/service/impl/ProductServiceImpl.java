package cn.xgtd.service.impl;

import cn.xgtd.dao.ProductDao;
import cn.xgtd.domain.product.*;
import cn.xgtd.service.ProductService;
import cn.xgtd.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 商品业务层
 * @author Kite
 * @date 2020/6/6
 */
@Service
public class ProductServiceImpl implements ProductService {


    /**商品持久层**/
    @Autowired
    ProductDao productDao;

    @Autowired
    RedisUtil redisUtil;


    @Override
    public List<BasicProduct> fendBasicProduct(Integer currentPage, Integer pageSize) {
        Integer start=(currentPage-1)*pageSize;
        List<BasicProduct> products =   productDao.fendBasicProduct(start,pageSize);
        return products;
    }

    /**
     * 查询总页数跟总数量
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public Integer[] fendTotalPage(Integer pageSize) {
        Integer[] TotalPage=new Integer[2];
        Integer quantity = productDao.findFavoriteQuantity();
        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }

    /**
     *查询商品详细信息
     * @param productId 商品id
     * @return
     */
    @Override
    public ProductDetails findDetails(Integer productId) {
        //设置缓存id
        String transition = String.valueOf(productId);
        String productIds ="productDetails_"+transition;
        //从缓存中查询是否存在
        ProductDetails  redis = (ProductDetails)redisUtil.get(productIds);
        if(redis==null){
            //设置商品配置信息
            ProductDetails productDetailsResult = setProductConfiguration(productId);
            productDetailsResult.setProductContexts(null);
            //查询不同配置集合 库存 价格
            List<ProductDistinction> productDistinctions = productDao.findProductDistinction(productId);
            productDetailsResult.setProductDistinctions(productDistinctions);

            redisUtil.set(productIds,productDetailsResult);
            return productDetailsResult;
        }else {
            //查询商品配置
            List<ProductDistinction> productDistinctions = productDao.findProductDistinction(productId);
            redis.setProductDistinctions(productDistinctions);
            //设置商品库存
            ProductDetails findInventorys = productDao.findSalesInventory(productId);
            redis.setInventorys(findInventorys.getInventorys());
            return redis;
        }
    }

    @Override
    public ProductDetails findProductDesciption(Integer productId) {
        return null;
    }

    /**
     * 查询商品分类
     * @return
     */
    @Override
    public List<ProductCategory> findCategory() {
        List<ProductCategory> productCategories = (List<ProductCategory>) redisUtil.get("productCategory");
        if (productCategories==null){
            productCategories = productDao.findCategory();
            redisUtil.set("productCategory",productCategories,259200000);
        }
        return productCategories;
    }

    /**
     * 设置商品配置
     * @param productId 商品id
     * @return 商品对象
     */
    public ProductDetails setProductConfiguration(Integer productId){
        ProductDetails productDetailsResult = productDao.fendProduct(productId);
        List<ProductContext> productContexts = productDetailsResult.getProductContexts();

        if (productContexts!=null){
            //颜色集合
            List<ProductContext> colourList = new  ArrayList();
            //版本集合
            List<ProductContext> versionList = new ArrayList<>();
            //规格集合
            List<ProductContext> specificationList = new ArrayList<>();
            //种类
            List<ProductContext> kindList = new ArrayList<>();
            //尺码
            List<ProductContext> sizeList = new ArrayList<>();
            //口味
            List<ProductContext> tasteList = new ArrayList<>();
            //套餐
            List<ProductContext> comboList = new ArrayList<>();
            //设置为空
            productDetailsResult.setColour(colourList);
            productDetailsResult.setVersion(versionList);
            productDetailsResult.setSpecification(specificationList);
            productDetailsResult.setKind(kindList);
            productDetailsResult.setSize(sizeList);
            productDetailsResult.setTaste(tasteList);
            productDetailsResult.setCombo(comboList);

            for (int i = 0; i <productContexts.size() ; i++) {
                //该商品属性类型
                String type = productContexts.get(i).getAttributeType();
                //当前属性
                ProductContext productContext = productContexts.get(i);

                switch(type){
                    case "颜色" :
                        colourList.add(productContext);
                        productDetailsResult.setColour(colourList)
                        ;break;
                    case "版本" :
                        versionList.add(productContext);
                        productDetailsResult.setVersion(versionList)
                        ;break;
                    case "规格" :
                        specificationList.add(productContext);
                        productDetailsResult.setSpecification(specificationList)
                        ;break;
                    case "尺寸" :
                        sizeList.add(productContext);
                        productDetailsResult.setSize(sizeList);
                        ;break;
                    case "种类" :
                        kindList.add(productContext);
                        productDetailsResult.setKind(kindList);
                        ;break;
                    case "口味" :
                        tasteList.add(productContext);
                        productDetailsResult.setTaste(tasteList);
                        ;break;
                    case "套餐" :
                        comboList.add(productContext);
                        productDetailsResult.setCombo(comboList);
                        ;break;
                }
            }
        }
        return productDetailsResult;
    }
}
