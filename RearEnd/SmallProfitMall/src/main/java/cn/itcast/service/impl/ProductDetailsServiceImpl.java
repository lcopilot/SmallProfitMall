package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.domain.ProductDatails.Size;
import cn.itcast.domain.ProductDetails;
import cn.itcast.domain.ProductDetailsResult;
import cn.itcast.service.ProductDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("productDetailsServiceImpl")
public class ProductDetailsServiceImpl implements ProductDetailsService {

    @Autowired
    ProductDetailsDao productDetailsDao;

    @Autowired
    ProductDetailsResult productDetailsResult;

    @Override
    public ProductDetailsResult findByPid(String pid) {

        String inventory = "";   //库存价格(转换)
        String sale = "";       //商品销量
        ProductDetails productDetails = productDetailsDao.findByPid(pid);
        productDetailsResult.setId(productDetails.getId());
        productDetailsResult.setPid(productDetails.getPid());
        productDetailsResult.setProductName(productDetails.getProductName());//商品名字
        productDetailsResult.setProductPrice(productDetails.getProductPrice());//价格
        productDetailsResult.setWeight(productDetails.getWeight()); //重量封装
        productDetailsResult.setVideo(productDetails.getVideo());   //封装视频
        productDetailsResult.setFreeShipping(productDetails.getFreeShipping());//封装是否包邮
        if (productDetails.getInventory() > 10000) {   //库存转换
            Double inventorys = productDetails.getInventory();
            inventorys = inventorys/10000;
            inventory = inventorys + "W+";
        }
        if (productDetails.getSales()>10000){
            Double sales = productDetails.getSales();
            sales =sales/10000;
            sale=sales+"W+";
        }
        if (productDetails.getInventory()==null) {  //库存为空 则设置为零
            productDetailsResult.setInventory("0");
        }
        if (productDetails.getSales()==null){
            productDetailsResult.setSales("0"); //如果销量为空 则设置为零
        }
        productDetailsResult.setInventory(inventory);//设置库存
        productDetailsResult.setSales(sale);
        String img = productDetails.getImageSite();
        if(img!=null){
            String[] imgs = img.split(",");//转图片为数组
            productDetailsResult.setImageSite(imgs);  //设置图片
        }

        String sizes=productDetails.getSize();
        if (sizes!=null){
            String[] size = sizes.split(",");//转尺寸为数组
            productDetailsResult.setSize(size);     //设置
        }

        String colours=productDetails.getColour();
        if (colours!=null){
            String[] colour = colours.split(",");//转颜色数组
            productDetailsResult.setColour(colour);     //设置颜色数组
        }


        String combos=productDetails.getCombo();
        if (combos!=null){
            String[] combo = combos.split(",");//转套餐数组
            productDetailsResult.setCombo(combo);     //设置套装数组
        }

        String specifications=productDetails.getSpecification();
        if (specifications!=null){
            String[] specification = specifications.split(",");//转规格数组
            productDetailsResult.setSpecification(specification);     //设置规格数组
        }

        String tastes=productDetails.getTaste();
        if (tastes!=null){
            String[] taste = tastes.split(",");//转规格数组
            productDetailsResult.setTaste(taste);     //设置规格数组
        }


        return productDetailsResult;
    }
}
