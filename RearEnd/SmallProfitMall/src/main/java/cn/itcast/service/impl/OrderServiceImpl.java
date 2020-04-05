package cn.itcast.service.impl;

import cn.itcast.dao.*;
import cn.itcast.domain.accountSettings.AccountSettings;
import cn.itcast.domain.address.Address;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import cn.itcast.service.*;
import cn.itcast.util.encryption.AesEncryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
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
    private OrderDao orderDao;

    @Autowired
    private ShoppingCartDao shoppingCartDao;

    @Autowired
    private ProductDetailsDao productDetailsDao;

    @Autowired
    private ShoppingCartService shoppingCartService;


    @Autowired
    private AccountSettingsDao accountSettingsDao;

    @Autowired
    private FaceRecognitionService faceRecognitionService;

    //会员信息
    @Autowired
    private MemberDao memberDao;

    @Autowired
    public AddressService addressService;
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
        //订单状态 1代表未付款
        order.setOrderState(1);
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
        //单价
        BigDecimal productPrice1=new BigDecimal(Double.toString(purchaseInformation1.getProductPrice()));
        //数量
        BigDecimal Quantity=new BigDecimal(String.valueOf(purchaseInformation.getQuantity()));
        BigDecimal total =productPrice1.multiply(Quantity);
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
     * 查询订单信息
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    @Override
    public Order findOrder(String userId, String orderId) {
        return orderDao.findOrder(userId,orderId);
    }

    /**
     * 验证支付密码
     * @param userId 用户id
     * @param faceRecognition 用户支付密码
     * @return 是否正确
     */
    @Override
    public Boolean verificationPay(String userId, String faceRecognition) throws Exception {
        AccountSettings accountSettings =accountSettingsDao.findAccountSettings(userId);
        String password = accountSettings.getPaymentPassword();
        //解密
       String sqlPassword = AesEncryptUtil.desEncrypt(password);
        if (sqlPassword.equals(faceRecognition)){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 验证人脸
     * @param image 人脸图片
     * @param userId 用户id
     * @param videoFile 人脸视频
     * @return
     */
    @Override
    public String verificationFace(String image, String userId, InputStream videoFile) throws Exception {
        //解密人脸
        image=AesEncryptUtil.desEncrypt(image);
        //进行人脸检测
        String verification = faceRecognitionService.faceVerification(image,videoFile);
        String result = "SUCCESS";
        //判断是否通过活体检测
        if (!result.equals(verification)){
        return verification;
        }
        //查询用户人脸toke
        AccountSettings accountSettings = accountSettingsDao.findAccountSettings(userId);
        System.out.println(accountSettings);
        String results = faceRecognitionService.faceCheck(accountSettings.getFaceToken(),image);
        if (!result.equals(results)){
            return results;
        }
        return result;
    }

    /**
     * 确认订单
     * @param order 订单对象
     * @return 1为支付成功 2 为余额不足
     */
    @Override
    public Integer confirmOrder(Order order) throws Exception {
        //返回结果
        Integer result=0;
        //判断用户付款方式 1为钱包支付 2为支付宝支付 3我微信支付
        if (order.getPaymentWay().equals(1)){
            //用户余额
            String encryptionBalance =  memberDao.findBalance(order.getUserId());
            //从session获取订单总计
            String totals = totals=orderDao.fenOrderTotal(order.getUserId(),order.getOrderId());
            //解密余额
            String decodeBalances = AesEncryptUtil.desEncrypt(encryptionBalance);
            BigDecimal balance=new BigDecimal(decodeBalances);
            BigDecimal total = new BigDecimal(totals);
            //保留两位小数
            int scale=2;
            //相减结果
            String difference= balance.subtract(total).setScale(scale, BigDecimal.ROUND_HALF_UP).toString();
            double value = Double.valueOf(difference.toString());
            if (value<0){
                return 2;
            }else {
                //加密剩余余额
                String balances = AesEncryptUtil.encrypt(difference);
                //跟新账户余额
                memberDao.updateBalance(order.getUserId(),balances);
                //修改订单状态 2为确认订单
                order.setOrderState(2);
                //确认订单
                orderDao.confirmOrder(order);
                //添加地址
                //转换地址
                Address address = addressService.defaults(order.getAddress());
                //添加地址
                orderDao.addOrdeAddress(order.getOrderId(),address);
                result=1;
            }
            return result;
        }

       return result;
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
            PurchaseInformation purchaseInformation1 =  shoppingCartDao.findByPid(shoppingCart1.getProductId());
            //设置商品名字
            productContent.setProductName(shoppingCart1.getProductName());
            //设置商品图片
            productContent.setProductImage(shoppingCart1.getImageSite());
            //设置商品价格
            productContent.setProductPrice(shoppingCart1.getProductPrice());
            //计算总和
            Double productPrice = shoppingCart1.getProductPrice();

            //单价
            BigDecimal productPrice1=new BigDecimal(Double.toString(purchaseInformation1.getProductPrice()));
            //数量
            BigDecimal Quantity=new BigDecimal(String.valueOf(shoppingCart1.getQuantity()));
            BigDecimal total =productPrice1.multiply(Quantity);

            orderNotes = orderNotes.add(total);
            //设置订单id
            productContent.setOrderId(orderId);
            //设置是否评价
            productContent.setEvaluate(false);
            //设置商品配置
            productContent.setProductConfiguration(shoppingCart1.getProductDeploy());
            //设置商品重量
            productContent.setProductWeight(purchaseInformation1.getProductWeight());
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
