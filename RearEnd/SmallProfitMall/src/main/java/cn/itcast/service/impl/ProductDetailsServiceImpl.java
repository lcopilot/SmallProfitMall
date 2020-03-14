package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.domain.ProductDatails.ProductBasis;
import cn.itcast.domain.ProductDatails.ProductDetailsResult;
import cn.itcast.service.ProductDetailsService;
import cn.itcast.util.cache.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

//商品详控制器
@Service("productDetailsServiceImpl")
public class ProductDetailsServiceImpl implements ProductDetailsService {

    @Autowired
    private ProductDetailsDao productDetailsDao;

    @Autowired
    private ProductBasis productBasis;

    @Autowired
    private RedisUtil redisUtil;

    @Autowired
    private ProductDetailsResult productDetailsResult;

    public List<ProductDetailsResult> findByPid(int pid) {
        String transition = String.valueOf(pid);
        String ProductId ="productId_"+transition;
        System.out.println(ProductId);
        List<ProductDetailsResult>  redis = (List<ProductDetailsResult>)redisUtil.lGet(ProductId,0,-1); //从缓存中查询
        if(redis.size()==0){
            String inventory = "";   //库存价格(转换)
            String sale = "";       //商品销量
            ProductBasis productDetails = productDetailsDao.findByIdBasis(pid);
            productDetailsResult=new ProductDetailsResult();
            productDetailsResult.setId(productDetails.getId());
            productDetailsResult.setPid(productDetails.getProductId());
            productDetailsResult.setProductName(productDetails.getProductName());//商品名字
            productDetailsResult.setProductPrice(productDetails.getProductPrice());//价格
            productDetailsResult.setWeight(productDetails.getProductWeight()); //重量封装
            productDetailsResult.setVideo(productDetails.getProductVideo());   //封装视频
            productDetailsResult.setFreeShipping(productDetails.getFreeShipping());//封装是否包邮
            if (productDetails.getProductInventory() > 10000) {   //库存转换
                java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.#");//取小数点后一位
                Double inventorys = productDetails.getProductInventory();
                Double a = inventorys/10000;
                inventory = df.format(a);
                inventory = inventory + "W+";   //库存过万转换
            }else {
                inventory=""+productDetails.getProductInventory(); //转为字符串类型
                inventory =inventory.split("\\.")[0];   //取小数点前数组
            }
            if (productDetails.getProductSales()>10000){
                java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.#");
                Double sales = productDetails.getProductSales();
                Double a = sales/10000;
                sale = df.format(a);
                sale=sale+"W+";     //销售过完转换
            }else {
                sale=""+productDetails.getProductSales();
                sale =sale.split("\\.")[0];
            }
            if (productDetails.getProductInventory()==0) {  //库存为空 则设置为零
                productDetailsResult.setInventory("0");
            }
            if (productDetails.getProductSales()==0){
                productDetailsResult.setSales("0"); //如果销量为空 则设置为零
            }
            productDetailsResult.setInventory(inventory);//设置库存
            productDetailsResult.setSales(sale);
            productDetailsResult.setImageSite(productDetailsDao.findByIdImage(pid));  //设置图片
            productDetailsResult.setSize(productDetailsDao.findBySize(pid));     //设置尺码
            productDetailsResult.setColour(productDetailsDao.findByIdColour(pid));     //设置颜色数组
            productDetailsResult.setCombo(productDetailsDao.findByIdCombo(pid));     //设置套装数组
            productDetailsResult.setSpecification(productDetailsDao.findByIdSpecification(pid));     //设置规格数组
            productDetailsResult.setTaste(productDetailsDao.findByIdTaste(pid));     //设置规格数组
            productDetailsResult.setKind(productDetailsDao.findByKind(pid));    //设置商品种类
            productDetailsResult.setVersion(productDetailsDao.findByVersion(pid)); //设置商品规格
            productDetailsResult.setInventorys(new Double(productDetails.getProductInventory()).intValue());
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
