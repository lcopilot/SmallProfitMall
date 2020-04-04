package cn.itcast.service.impl;

import cn.itcast.dao.OrderDao;
import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.dao.ShoppingCartDao;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import cn.itcast.service.OrderService;
import cn.itcast.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @author Kite
 * @date 2020/4/3
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderDao orderDao;

    @Autowired
    ShoppingCartDao shoppingCartDao;

    @Autowired
    ProductDetailsDao productDetailsDao;

    @Autowired
    ShoppingCartService shoppingCartService;

    /**
     * 购物车订单
     * @param userId 用户id
     * @param shoppingCartId 购物车id
     * @return 返回订单号
     */
    @Override
    public String addOrder(String userId, Integer[] shoppingCartId) {
        Order order= new Order();

        //生成订单id
        String orderId = generateOrderId();
        order.setOrderTime(new Date());
        //初始购物车id
        Integer[] initialize=shoppingCartId;
        //将购物车中商品信息添加到订单商品信息 返回总价格
        BigDecimal orderNotes = addProduct(initialize,orderId);
        //设置总计
        order.setOrderTotal(orderNotes);
        //设置用户id
        order.setUserId(userId);
        //设置订单时间
        order.setOrderTime(new Date());
        //设置订单号
        order.setOrderId(orderId);
        //数据库新增
        orderDao.addOrder(order);
        return orderId;

    }

    /**
     * 直接购买结算订单
     * @param purchaseInformation 商品对象
     * @return
     */
    @Override
    public String purchaseOrder(PurchaseInformation purchaseInformation){
        Order order= new Order();
        //数据库取商品价格名字
        PurchaseInformation purchaseInformation1 =  shoppingCartDao.findByPid(purchaseInformation.getProductId());
        //创建商品详细信息
        ProductContent productContent = new ProductContent();
        //生成订单id
        String orderId = generateOrderId();
        //设置商品名字
        productContent.setProductName(purchaseInformation1.getProductName());
        //设置商品图片
        productContent.setProductImage(productDetailsDao.findProductImage(purchaseInformation.getProductId()));
        //设置商品价格
        productContent.setProductPrice(purchaseInformation1.getProductPrice());
        //设置订单id
        productContent.setOrderId(orderId);
        //设置是否评价
        productContent.setEvaluate(false);
        //商品配置
        String productDeploy = shoppingCartService.fenProductDeploy(purchaseInformation);
        //设置商品配置
        productContent.setProductConfiguration(productDeploy);
        //设置商品购买数量
        productContent.setProductQuantity(purchaseInformation.getQuantity());
        //设置商品重量
        productContent.setProductWeight(purchaseInformation1.getProductWeight());
        //添加到订单商品信息表
        orderDao.addProductContent(productContent);

        BigDecimal total =new BigDecimal(purchaseInformation1.getProductPrice());
        //设置总计
        order.setOrderTotal(total);
        //设置用户id
        order.setUserId(purchaseInformation.getUserId());
        //设置订单时间
        order.setOrderTime(new Date());
        //设置订单号
        order.setOrderId(orderId);
        //数据库新增
        orderDao.addOrder(order);
        return orderId;
    }

    /**
     * 生成订单号 时间戳加当天流水号
     * 取当天最后一笔订单的流水号加一
     * 今天第一笔订单流水号为1000000
     * @return
     */
    public String generateOrderId(){
        String initialId="100000";
        //获取当前时间戳
        Long timeStamp = System.currentTimeMillis();
        //获取今天最后一个订单号
        String orderIds=orderDao.findSerialnumber();
        //若为今天第一个订单 则为000000
        if (null==orderIds||"".equals(orderIds)){
            orderIds=initialId;
        }
        //截取最后六位
        Integer Serialnumber =Integer.parseInt(orderIds.substring(orderIds.length() -6,orderIds.length()));
        //订单号
        Integer orderId1 = Serialnumber+1;
        String orderId =timeStamp.toString()+orderId1;
        return orderId;
    }

    /**
     * 将商品信息添加到订单
     * @param initialize 购物车id数组
     * @param orderId 订单id
     * @return
     */
    public BigDecimal addProduct (Integer[] initialize ,String orderId){
        //创建商品详细信息
        ProductContent productContent = new ProductContent();
        //取出购物车id数组
        List<Integer> shoppingCartIdList = Arrays.asList(initialize) ;
        //商品总计
        BigDecimal orderNotes=new BigDecimal("0.00");

        //将购物车商品新增设置到订单中
        for (Integer shoppingCartIds : shoppingCartIdList){
            List<ShoppingCart> shoppingCart= shoppingCartDao.findShoppingCart(null,shoppingCartIds);
            ShoppingCart shoppingCart1 = shoppingCart.get(0);
            //设置商品名字
            productContent.setProductName(shoppingCart1.getProductName());
            //设置商品图片
            productContent.setProductImage(shoppingCart1.getImageSite());
            //设置商品价格
            productContent.setProductPrice(shoppingCart1.getProductPrice());
            //计算总和
            Double productPrice = shoppingCart1.getProductPrice();
            BigDecimal productPrices = new BigDecimal(String.valueOf(productPrice));
            orderNotes = orderNotes.add(productPrices);
            //设置订单id
            productContent.setOrderId(orderId);
            //设置是否评价
            productContent.setEvaluate(false);
            //设置商品配置
            productContent.setProductConfiguration(shoppingCart1.getProductDeploy());
            //设置商品重量
            productContent.setProductWeight(shoppingCart1.getProductWeight());
            //设置商品购买数量
            productContent.setProductQuantity(shoppingCart1.getQuantity());
            //添加到订单商品信息表
            orderDao.addProductContent(productContent);
            //删除该购物车购物车
            shoppingCartDao.deleteCart(shoppingCartIds);
        }
        return orderNotes;
    }
}
