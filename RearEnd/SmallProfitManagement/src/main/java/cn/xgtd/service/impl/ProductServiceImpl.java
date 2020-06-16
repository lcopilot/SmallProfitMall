package cn.xgtd.service.impl;

import cn.xgtd.dao.ProductDao;
import cn.xgtd.domain.product.*;
import cn.xgtd.service.ProductService;
import cn.xgtd.util.img.UploadFileUtil;
import cn.xgtd.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
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
     * 添加商品
     * @param productDetails 商品对象
     * @return
     */
    @Override
    public List<ProductContext>  addProduct(ProductDetails productDetails) throws IOException {
        //七牛云储存空间
        String space = "productdataf";
        //文件名字

        //上传视频
        String videoFileName = productDetails.getVideo();
        if (videoFileName!=null && !videoFileName.equals("")){
            String video = UploadFileUtil.uploadFileUtil(space,videoFileName,videoFileName);
            productDetails.setVideo(video);
        }


        productDao.addProduct(productDetails);
        List<ProductImage> imageSiteList = new ArrayList<>();

        List<ProductImage> imageList = productDetails.getProductImages();
        if (imageList!=null){
            if (imageList.size()>0 && !videoFileName.equals("") ){
                //上传商品图片
                for (int i = 0; i <imageList.size() ; i++) {
                    ProductImage productImage = new ProductImage();
                    String  imageSites = UploadFileUtil.uploadFileUtil(space,productDetails.getProductId().toString(),imageList.get(i).getImageSite());
                    productImage.setImageSite(imageSites);
                    productImage.setSign(imageList.get(i).getSign());
                    productImage.setProductId(productDetails.getProductId());
                    imageSiteList.add(productImage);
                }
                productDao.addProductImage(imageSiteList);
            }
        }

        //添加商品配置
        List<ProductContext> productContexts = productDetails.getProductContexts();
        for (int i = 0; i <productContexts.size() ; i++) {
            productContexts.get(i).setProductId(productDetails.getProductId());
        }
        productDao.addProductContext(productContexts);


        List<ProductContext>  productContexts1 = productDao.findProductAttribute(productDetails.getProductId());
        return productContexts1;
    }

    /**
     * 查询所有商品种类
     * @return
     */
    @Override
    public List<AttributeType> findAttributeType() {
        List<AttributeType>  attributeTypes =  productDao.findAttributeType();
        return attributeTypes;
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
                    Integer type = productContexts.get(j).getTitleId();
                    //当前属性
                    ProductContext productContext = productContexts.get(j);
                    switch(type){
                        case 11 :
                            colourList.add(productContext);
                            break;
                        case 16 :
                            versionList.add(productContext);
                            break;
                        case 13 :
                            specificationList.add(productContext);
                            ;break;
                        case 10 :
                            sizeList.add(productContext);
                            break;
                        case 15 :
                            kindList.add(productContext);
                            ;break;
                        case 14 :
                            tasteList.add(productContext);
                            ;break;
                        case 12 :
                            comboList.add(productContext);
                            ;break;
                    }
                }
                productDetailsResult.get(i).setColour(colourList);
                productDetailsResult.get(i).setVersion(versionList);
                productDetailsResult.get(i).setSpecification(specificationList);
                productDetailsResult.get(i).setSize(sizeList);
                productDetailsResult.get(i).setKind(kindList);
                productDetailsResult.get(i).setTaste(tasteList);
                productDetailsResult.get(i).setCombo(comboList);
            }
        }

        return productDetailsResult;
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
}
