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
     * 查询所有分类 先分出行的一级目录 再转换返回的分类数据格式
     * @return
     */
    @Override
    public   List<ProductCategory> findProductCategory() {
        List<ProductCategory> findProductCategory = (List<ProductCategory>) redisUtil.get("findProductCategory");
        if (findProductCategory!=null){
            return findProductCategory;
        }

        //定义返回商品分类数据类
        List<ProductCategory> productCategories = new  ArrayList();

        //定义分类每行的一级目录
        List<ProductPrimaryCategoryList> productPrimaryCategoryLists = new ArrayList<>();

        //查询所有分类数据
        List<ProductPrimaryCategory> productPrimaryCategory =  homepageDao.findProductCategory();
        if (productPrimaryCategory.size()>0){

                //同一级目录的一级目录对象
                ProductPrimaryCategoryList productPrimaryCategoryList1 = new ProductPrimaryCategoryList();
                //判断是否同一级 同一级的目录添加到集合
                List<ProductPrimaryCategory> productPrimaryCategories = new ArrayList<>();
                //分一级目录
                for (int j = 0; j <productPrimaryCategory.size() ; j++) {
                    //添加一级目录到分类对象集合中
                    productPrimaryCategories.add(productPrimaryCategory.get(j));
                    //判断是否是下一行分类 添加到对象
                    if (productPrimaryCategory.get(j).getSign()){
                        productPrimaryCategoryList1.setProductPrimaryCategories(productPrimaryCategories);
                        productPrimaryCategoryLists.add(productPrimaryCategoryList1);
                        //初始化一级目录
                        productPrimaryCategories = new ArrayList<>();
                        //初始化一级目录对象
                        productPrimaryCategoryList1= new ProductPrimaryCategoryList();
                    }
                }

            //转换分类的返回格式
            for (int i = 0; i <productPrimaryCategoryLists.size() ; i++) {
                //定义二级目录数据
                List<ProductSecondaryCategory> productSecondaryCategories = new ArrayList<>();

                //定义同一级
                List<ProductPrimaryCategory> productPrimaryCategory1 = productPrimaryCategoryLists.get(i).getProductPrimaryCategories();
                //创建一级分类目录对象
                ProductCategory productCategory = new ProductCategory();
                //定义一级目录名称
                List<String> Category_content = new  ArrayList();

                for (int j = 0; j <productPrimaryCategory1.size(); j++) {
                    Category_content.add(productPrimaryCategory1.get(j).getCategory_content());

                    for (int k = 0; k <productPrimaryCategory1.get(j).getProductSecondaryCategories().size() ; k++) {
                        ProductSecondaryCategory productSecondaryCategory =   productPrimaryCategory1.get(j).getProductSecondaryCategories().get(k);
                        productSecondaryCategories.add(productSecondaryCategory);
                    }

                }
                //设置一行一级目录名称集合
                productCategory.setCategory_content(Category_content);

                //设置一级目录下的二级目录数据
                productCategory.setProductSecondaryCategories(productSecondaryCategories);

                //添加一行一级目录对象
                productCategories.add(productCategory);
            }

            }
        //存入缓存
       // redisUtil.set("findProductCategory", productCategories);
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

