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
     * @return
     */
    @Override
    public List<ProductDetails> findDetails(Integer currentPage,Integer pageSize) {
//        String productIds ="productDetails";
//        //从缓存中查询是否存在
//        List<ProductDetails>  redis = (List<ProductDetails>)redisUtil.get(productIds);
//        if(redis!=null){
//            return redis;
//        }
        //设置商品详细以及配置信息
        List<ProductDetails> productDetailsResult = setProductConfiguration(currentPage, pageSize);
        for (int i = 0; i <productDetailsResult.size() ; i++) {
            productDetailsResult.get(i).setProductContexts(null);
            String weight = productDetailsResult.get(i).getWeight();
            if (weight!=null){
                Double weights=null;
                if (!weight.equals("不计重")){
                    weight = weight.split("k")[0];
                    weights=Double.valueOf(weight);
                }else {
                    weights=00.00;
                }
                productDetailsResult.get(i).setWeights(weights);
            }

            //查询不同配置集合 库存 价格
            List<ProductDistinction> productDistinctions = productDao.findProductDistinction(productDetailsResult.get(i).getProductId());
            productDetailsResult.get(i).setProductDistinctions(productDistinctions);
        }
//        redisUtil.set(productIds,productDetailsResult);
        return productDetailsResult;

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
     * @return 商品对象
     */
    public List<ProductDetails> setProductConfiguration(Integer currentPage,Integer pageSize){
        Integer start=(currentPage-1)*pageSize;
        List<ProductDetails> productDetailsResult = productDao.fendProduct(start, pageSize);
        for (int i = 0; i <productDetailsResult.size() ; i++) {
            List<ProductContext> productContexts = productDetailsResult.get(i).getProductContexts();

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
                productDetailsResult.get(i).setColour(colourList);
                productDetailsResult.get(i).setVersion(versionList);
                productDetailsResult.get(i).setSpecification(specificationList);
                productDetailsResult.get(i).setKind(kindList);
                productDetailsResult.get(i).setSize(sizeList);
                productDetailsResult.get(i).setTaste(tasteList);
                productDetailsResult.get(i).setCombo(comboList);

                for (int j = 0; j <productContexts.size() ; j++) {
                    //该商品属性类型
                    String type = productContexts.get(j).getAttributeType();
                    //当前属性
                    ProductContext productContext = productContexts.get(j);

                    switch(type){
                        case "颜色" :
                            colourList.add(productContext);
                            productDetailsResult.get(j).setColour(colourList)
                            ;break;
                        case "版本" :
                            versionList.add(productContext);
                            productDetailsResult.get(j).setVersion(versionList)
                            ;break;
                        case "规格" :
                            specificationList.add(productContext);
                            productDetailsResult.get(j).setSpecification(specificationList)
                            ;break;
                        case "尺寸" :
                            sizeList.add(productContext);
                            productDetailsResult.get(j).setSize(sizeList);
                            ;break;
                        case "种类" :
                            kindList.add(productContext);
                            productDetailsResult.get(j).setKind(kindList);
                            ;break;
                        case "口味" :
                            tasteList.add(productContext);
                            productDetailsResult.get(j).setTaste(tasteList);
                            ;break;
                        case "套餐" :
                            comboList.add(productContext);
                            productDetailsResult.get(j).setCombo(comboList);
                            ;break;
                    }
                }
            }
        }

        return productDetailsResult;
    }
}
