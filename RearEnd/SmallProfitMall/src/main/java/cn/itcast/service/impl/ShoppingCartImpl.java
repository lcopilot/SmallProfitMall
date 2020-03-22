package cn.itcast.service.impl;

import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.dao.ShoppingCartDao;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import cn.itcast.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingCartImpl implements ShoppingCartService {

    @Autowired
    private ShoppingCartDao shoppingCartDao;

    @Autowired
    private ShoppingCart shoppingCart;

    @Autowired
    private ProductDetailsDao productDetailsDao;
    //添加购物车
    @Override
    public int addShoppingCar(PurchaseInformation purchaseInformation) {
        //根据ic查询价格
        PurchaseInformation purchaseInformation1 =  shoppingCartDao.findByPid(purchaseInformation.getPid());//数据库取商品价格名字
        System.out.println(purchaseInformation1);
        shoppingCart.setProductName(purchaseInformation1.getProductName());     //设置商品名字
        shoppingCart.setProductPrice(purchaseInformation1.getProductPrice());   //设置商品价格
        shoppingCart.setProductInventory(purchaseInformation1.getProductInventory());   //设置库存
        shoppingCart.setProductId(purchaseInformation.getPid());                //设置商品id
        shoppingCart.setQuantity(purchaseInformation.getQuantity());            //设置购买数量
        shoppingCart.setUserId(purchaseInformation.getUserId());                //设置用户id

        String productDeploy = "";
        if (!purchaseInformation.getColour().equals("")||!purchaseInformation.getColour().equals(null)){           //颜色
            productDeploy = productDeploy+purchaseInformation.getColour()+" ";
        }
        if (!purchaseInformation.getCombo().equals("")||purchaseInformation.getCombo()==null){           //套餐
            productDeploy = productDeploy+purchaseInformation.getCombo()+" ";
        }
        if (!purchaseInformation.getKind().equals("")||purchaseInformation.getKind().equals(null)){         //种类
            productDeploy = productDeploy+purchaseInformation.getKind()+" ";
        }
        if (!purchaseInformation.getSize().equals("")||purchaseInformation.getSize().equals(null)){         //尺寸
            productDeploy = productDeploy+purchaseInformation.getSize()+" ";
        }
        if (!purchaseInformation.getVersion().equals("")||purchaseInformation.getVersion().equals(null)){      //版本
            productDeploy = productDeploy+purchaseInformation.getVersion()+" ";
        }
        if(!purchaseInformation.getTaste().equals("")||purchaseInformation.getTaste().equals(null)){         //口味
            productDeploy = productDeploy+purchaseInformation.getTaste()+" ";
        }
        if(!purchaseInformation.getSpecification().equals("")||purchaseInformation.getSpecification().equals(null)){ //规格
            productDeploy = productDeploy+purchaseInformation.getSpecification()+" ";
        }

        shoppingCart.setProductDeploy(productDeploy);
        int redis = shoppingCartDao.addShoppingCar(shoppingCart);
        return redis;
    }
}
