package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.domain.ProductDatails.ProductAttributes;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.domain.ProductDatails.Recommend;
import cn.itcast.service.ProductDetailsService;
import cn.itcast.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

//商品详细
@Service("productDetailsServiceImpl")
public class ProductDetailsServiceImpl implements ProductDetailsService {

    @Autowired
    private ProductDetailsDao productDetailsDao;


    @Autowired
    private RedisUtil redisUtil;

    /**
     * 商品详细分类
     * @param pid 商品id
     * @return 商品详细对象
     */
    @Override
    public ProductDetailsResult findByPid(int pid) {
//        //查询商品有的属性
//           ProductAttributes productAttributes = productDetailsDao.fendAttributes(pid);
        //查询商品详细信息
        ProductDetailsResult productDetailsResult = productDetailsDao.fendProduct(pid);
        String transition = String.valueOf(pid);
        String ProductId ="productId_"+transition;
        //从缓存中查询是否存在
        ProductDetailsResult  redis = (ProductDetailsResult)redisUtil.get(ProductId);
        if(redis==null){
            //库存价格(转换)
            String inventory =findInventory(productDetailsResult.getProductInventory());
            //商品销量(转换)
            String sale =findSale(productDetailsResult.getProductSales());


            if (productDetailsResult.getProductSales()==0){
                //如果销量为空 则设置为零
                productDetailsResult.setSales("0");
            }
            //库存为空 则设置为零
            if (productDetailsResult.getProductInventory()==0) {
                productDetailsResult.setInventory("0");
            }
            //设置转换后的库存
            productDetailsResult.setInventory(inventory);
            //设置转换后的销量
            productDetailsResult.setSales(sale);

            System.out.println("数据库中取商品详细数据");

            redisUtil.set(ProductId,productDetailsResult);
            return productDetailsResult;
        }else {
            ProductDetailsResult productDetailsResult1 = productDetailsDao.findSalesInventory(pid);
            //从缓存中取 跟新商品的销量跟库存
            Integer[] productId= new Integer[]{pid};
            //查询当前库存
           double intInventory = productDetailsResult1.getProductInventory();
            //格式转换
            String productInventorys = findInventory(intInventory);
            //设置数字库存
            redis.setProductInventory(intInventory);
            //设置转换后的字符串库存
            redis.setInventory(productInventorys);
            if (intInventory==0) {
                redis.setInventory("0");
            }

            //查询当前销量
            Double intProductSales = productDetailsResult1.getProductSales();
            //设置数组销量
            redis.setProductSales(intProductSales);
            //格式转换
            String productSale = findSale(intProductSales);
            //设置转换格式后的销量
            redis.setSales(productSale);
            if (intProductSales==0){
                //如果销量为空 则设置为零
                redis.setSales("0");
            }
            System.out.println("缓存中取商品详细数据");
            return redis;
        }

    }


    /**
     * 商品介绍 商品保障 商品参数
     * @param productId
     * @return
     */
    @Override
    public ProductDetailsResult findProductDesciption(Integer productId){
        ProductDetailsResult productDetailsResults = productDetailsDao.findProductDesciption(productId);
         return productDetailsResults;
    }


    /**
     *查询商品的推荐
     * @param productId 商品id
     * @return
     */
    @Override
    public List<Recommend> findRecommend(Integer productId){
        //查询页起始点
        Integer start = 0;
        //每页查询数量
        Integer pageSize = 3;
        List<Recommend> recommends = new ArrayList<>();
        List<Recommend> recommends1 = productDetailsDao.findFinalRecommend(productId,start,pageSize,1);
        for(Recommend recommend : recommends1){
            recommends.add(recommend);
        }

        for (int i = 2; i <5 ; i++) {
            if (recommends.size()<3){
                pageSize=3-recommends.size();
                List<Recommend> recommends2 = productDetailsDao.findFinalRecommend(productId,start,pageSize,i);
                for(Recommend recommend : recommends2){
                    recommends.add(recommend);
                }
            }else {
                break;
            }

        }
        return recommends;
    }


    public String findInventory(Double productInventory){

        //库存价格(转换)
        String inventory = "";
        //库存转换 大于10000转换微1w
        if (productInventory > 10000) {
            //取小数点后一位
            java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.#");
            Double inventorys = productInventory;
            Double a = inventorys/10000;
            inventory = df.format(a);
            //库存过万转换
            inventory = inventory + "W+";
        }else {
            //转为字符串类型
            inventory=""+productInventory;
            //取小数点前数组
            inventory =inventory.split("\\.")[0];
        }

        return inventory;
    }

    public String findSale(Double productSales){
        //商品销量(转换)
        String sale = "";
        if (productSales>10000){
            java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.#");
            Double sales = productSales;
            Double a = sales/10000;
            sale = df.format(a);
            //销售过完转换
            sale=sale+"W+";
        }else {
            sale=""+productSales;
            sale =sale.split("\\.")[0];
        }

        return sale;
    }

}
