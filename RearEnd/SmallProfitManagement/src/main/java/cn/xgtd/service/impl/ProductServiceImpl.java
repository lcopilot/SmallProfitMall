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
        Integer start=(currentPage-1)*pageSize;
        List<ProductDetails> productDetailsResult = productDao.fendProduct(start, pageSize);
        List<ProductDetails> productDetailsList = new ArrayList<>();
        for (int i = 0; i <productDetailsResult.size() ; i++) {
            ProductDetails productDetails = new ProductDetails();
            //设置商品详细以及配置信息
            productDetails=setProductConfiguration(productDetailsResult.get(i));
            productDetailsList.add(productDetails);
        }

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
    public ProductDetails  addProduct(ProductDetails productDetails) throws IOException {
        //七牛云储存空间
        String space = "productdataf";
        //上传视频
        String videoFileName = productDetails.getVideo();
        if (videoFileName!=null && !videoFileName.equals("")){
            String video = UploadFileUtil.uploadFileUtil(space,videoFileName,videoFileName);
            redisUtil.del(videoFileName+"Succeed");
            productDetails.setVideo(video);
        }

        ProductClassify productClassify = new ProductClassify();
        //商品分类转换
        List<Integer> productClassifyList = productDetails.getProductClassifyList();
        if (productClassifyList.size()==3){
            productClassify.setProductPrimaryId(productClassifyList.get(0));
            productClassify.setProductSecondaryId(productClassifyList.get(1));
            productClassify.setProductFinalId((productClassifyList.get(2)));
        }

        productDao.addProduct(productDetails);


        //商品图片转换
        List<ProductImage> imageSiteList = new ArrayList<>();
        List<ProductImage> imageList = new ArrayList<>();
        List<String> imageString =  productDetails.getImageSite();
        if (imageString!=null){
            for (int i = 0; i <imageString.size() ; i++) {
                ProductImage productImage = new ProductImage();
                if (i==0){
                    productImage.setSign(true);
                    productImage.setImageSite(imageString.get(i));
                }else {
                    productImage.setSign(false);
                    productImage.setImageSite(imageString.get(i));
                }
                imageList.add(productImage);
            }
        }


        if (imageList!=null){
            if (imageList.size()>0 && !imageList.equals("") ){
                //上传商品图片
                for (int i = 0; i <imageList.size() ; i++) {
                    ProductImage productImage = new ProductImage();
                    String  imageSites = UploadFileUtil.uploadFileUtil(space,productDetails.getProductId().toString(),imageList.get(i).getImageSite());
                    productImage.setImageSite(imageSites);
                    productImage.setSign(imageList.get(i).getSign());
                    productImage.setProductId(productDetails.getProductId());
                    imageSiteList.add(productImage);
                    redisUtil.del(imageList.get(i).getImageSite()+"Succeed");
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


        ProductDetails productDetails1 = new ProductDetails();
        List<ProductContext>  productContextsList = productDao.findProductAttribute(productDetails.getProductId());
        if (productContextsList!=null){
            productDetails1.setProductContexts(productContextsList);
            productDetails1 = setProductConfiguration(productDetails1);
            productDetails1.setProductId(productDetails.getProductId());
        }
        return productDetails1;
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
    public ProductDetails setProductConfiguration(ProductDetails productDetailsResult){

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
                productDetailsResult.setColour(colourList);
                productDetailsResult.setVersion(versionList);
                productDetailsResult.setSpecification(specificationList);
                productDetailsResult.setSize(sizeList);
                productDetailsResult.setKind(kindList);
                productDetailsResult.setTaste(tasteList);
                productDetailsResult.setCombo(comboList);
            }
        productDetailsResult.setProductContexts(null);
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
