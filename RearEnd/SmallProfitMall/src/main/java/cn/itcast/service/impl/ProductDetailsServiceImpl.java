package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.domain.ProductDatails.ProductAttributes;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.service.ProductDetailsService;
import cn.itcast.util.cache.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

//商品详细
@Service("productDetailsServiceImpl")
public class ProductDetailsServiceImpl implements ProductDetailsService {

    @Autowired
    private ProductDetailsDao productDetailsDao;


    @Autowired
    private RedisUtil redisUtil;

    @Override
    public List<ProductDetailsResult> findByPid(int pid) {
        //查询商品有的属性
      //  ProductAttributes productAttributes = productDetailsDao.fendAttributes(pid);
        //查询商品详细信息
        ProductDetailsResult productDetailsResult = productDetailsDao.fendProduct(pid);
        String transition = String.valueOf(pid);
        String ProductId ="productId_"+transition;
        List<ProductDetailsResult>  redis = (List<ProductDetailsResult>)redisUtil.lGet(ProductId,0,-1); //从缓存中查询
        if(redis.size()==0){
            //库存价格(转换)
            String inventory = "";
            //商品销量(转换)
            String sale = "";
            //库存转换 大于10000转换微1w
            if (productDetailsResult.getInventorys() > 10000) {
                java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.#");//取小数点后一位
                Double inventorys = productDetailsResult.getProductInventory();
                Double a = inventorys/10000;
                inventory = df.format(a);
                inventory = inventory + "W+";   //库存过万转换
            }else {
                inventory=""+productDetailsResult.getProductInventory(); //转为字符串类型
                inventory =inventory.split("\\.")[0];   //取小数点前数组
            }
            if (productDetailsResult.getProductSales()>10000){
                java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.#");
                Double sales = productDetailsResult.getProductSales();
                Double a = sales/10000;
                sale = df.format(a);
                //销售过完转换
                sale=sale+"W+";
            }else {
                sale=""+productDetailsResult.getProductSales();
                sale =sale.split("\\.")[0];
            }
            //库存为空 则设置为零
            if (productDetailsResult.getProductInventory()==0) {
                productDetailsResult.setInventory("0");
            }
            if (productDetailsResult.getProductSales()==0){
                //如果销量为空 则设置为零
                productDetailsResult.setSales("0");
            }
            //设置转换后的库存
            productDetailsResult.setInventory(inventory);
            //设置转换后的销量
            productDetailsResult.setSales(sale);
            redisUtil.lSet(ProductId,productDetailsResult);
            System.out.println("数据库中取");
            List<ProductDetailsResult> productDetailsResults= Arrays.asList(productDetailsResult);
            return productDetailsResults;
        }else {
            System.out.println("缓存中取");
            return redis;
        }

    }

}
