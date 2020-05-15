package cn.itcast.service.impl;

import cn.itcast.dao.HomepageDao;
import cn.itcast.domain.commodity.Classify;
import cn.itcast.domain.homepag.*;
import cn.itcast.service.HomepageService;
import cn.itcast.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service("homepageService")
public class HomepageServiceImpl implements HomepageService {

    @Autowired
    private HomepageDao homepageDao;

    @Autowired
    RedisUtil redisUtil;


    /**
     * 轮播图
     * @return 轮播图集合
     */
    @Override
    public List findRotationChart() {
        List<RotationChart> redis = (List<RotationChart>)redisUtil.get("RotationChart");
        if (redis==null || redis.size()==0){
            List<RotationChart> findRotationChart = homepageDao.findRotationChart();
            redisUtil.set("RotationChart",findRotationChart);
            return findRotationChart;
        }
     return redis;
    }



    /**
     * 详细分类
     * @return
     */
    @Override
    public Classification findNavigationInDetail(){
        Classification redis = (Classification) redisUtil.get("findNavigationInDetail");
        if (redis==null){
            Classification classification = new Classification();
            classification.setNavigationClassify(homepageDao.findNavigationClassify());
            classification.setNavigations(homepageDao.findNavigation());
            redisUtil.set("findNavigationInDetail",classification);
            return classification;
        }
        return redis;

    }

    @Override
    public   List<ProductCategory> findProductCategory() {

        List<ProductPrimaryCategoryList> productPrimaryCategoryLists = new ArrayList<>();

        List<ProductPrimaryCategory> productPrimaryCategory =  homepageDao.findProductCategory();

        List<ProductCategory> productCategories = new   ArrayList();

        if (productPrimaryCategory.size()>0){

                //同一级目录的一级目录对象
                ProductPrimaryCategoryList productPrimaryCategoryList1 = new ProductPrimaryCategoryList();

                //判断是否同一级 同一级的目录添加到集合
                List<ProductPrimaryCategory> productPrimaryCategories = new ArrayList<>();

                for (int j = 0; j <productPrimaryCategory.size() ; j++) {

                    //添加一级目录到分类对象集合中
                    productPrimaryCategories.add(productPrimaryCategory.get(j));
                    //判断是否是下一行分类 添加到对象
                    if (productPrimaryCategory.get(j).getSign()){
                        productPrimaryCategoryList1.setProductPrimaryCategories(productPrimaryCategories);
                        productPrimaryCategoryLists.add(productPrimaryCategoryList1);
                        productPrimaryCategories = new ArrayList<>();
                        productPrimaryCategoryList1= new ProductPrimaryCategoryList();
                    }
                }
            System.out.println(productPrimaryCategoryLists);


             //创建返回分类对象
            ProductCategory productCategory = new ProductCategory();
            //定义一级目录名称
            List<String> Category_content = new  ArrayList();
            //定义二级目录数据
            List<List<ProductSecondaryCategory>> productSecondaryCategories = new ArrayList<>();
            for (int i = 0; i <productPrimaryCategoryLists.size() ; i++) {
                List<ProductPrimaryCategory> productPrimaryCategory1 = productPrimaryCategoryLists.get(i).getProductPrimaryCategories();

                for (int j = 0; j <productPrimaryCategory1.size(); j++) {
                    Category_content.add(productPrimaryCategory1.get(j).getCategory_content());
                    productSecondaryCategories.add(productPrimaryCategory1.get(j).getProductSecondaryCategories());
                }
                productCategory.setCategory_content(Category_content);
                productCategory.setProductSecondaryCategories(productSecondaryCategories);
                productSecondaryCategories =  new ArrayList<>();
                Category_content= new  ArrayList();
                productCategories.add(productCategory);
                productCategory = new ProductCategory();
            }

//                Integer productCategoriesId = null;
//                if (i == 1) {
//                    productCategoriesId = productPrimaryCategory.get(i).getProduct_content_id();
//                }else {
//                    productCategoriesId = productPrimaryCategory.get(i-1).getProduct_content_id();
//                }
//
//                if (productPrimaryCategory.get(i).getProduct_content_id().equals(productCategoriesId)){
//                    productPrimaryCategories.add(productPrimaryCategory.get(i));
//            }


            }

        return productCategories;
    }

    /**
     * 查询搜索栏下导航栏
     * @return
     */
    @Override
    public List<Classify> findNavigation2() {
        List<Classify> redis = (List<Classify>) redisUtil.get("findNavigation2");
        if (redis==null || redis.size() == 0 ) {
            System.out.println("数据库中取");
            List<Classify> navigation2 = homepageDao.findNavigation2();
            //存入缓存
            redisUtil.set("findNavigation2", navigation2);

            return navigation2;
        } else {
            System.out.println("缓存中取");
           // 取缓存
            return redis;
        }
    }

    /**
     * 查询图标
     * @return
     */
    @Override
    public List<Icon> findIcon() {
        List<Icon> redisIcon = (List<Icon>) redisUtil.lGet("Icon", 0, -1);
        System.out.println(redisIcon);
        if (redisIcon.size() == 0) {
            System.out.println("数据库中取");
            List<Icon> Icons = homepageDao.findIcon();
            //存入缓存
            redisUtil.lSet("Icon", Icons);
            //转换返回格式
            ArrayList[] arrayLists = {(ArrayList) Icons};
            //增加一层数组
            List list= Arrays.asList(arrayLists);
            List<Icon>  Icon = list;
            return Icon;
        } else {
            System.out.println("缓存中取");
            //取缓存
            return redisIcon;
        }
    }


}

