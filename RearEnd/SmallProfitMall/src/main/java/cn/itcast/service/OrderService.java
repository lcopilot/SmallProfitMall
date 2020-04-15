package cn.itcast.service;

import cn.itcast.domain.order.Order;
import cn.itcast.domain.shoppingCar.PurchaseInformation;

import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;
import java.math.BigDecimal;

/**
 * @author Kite
 * @date 2020/4/3
 */
public interface OrderService {
    /**
     * 添加订单
     * @param userId 用户id
     * @param shoppingCartId 购物车id
     * @return
     */
    public String addOrder(String userId, Integer[] shoppingCartId);

    /**
     * 直接购买订单结算
     * @param purchaseInformation
     * @return
     */
    public String purchaseOrder(PurchaseInformation purchaseInformation);

    /**
     * 查询订单信息
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    public Order findOrder(String userId ,String orderId);

    /**
     * 验证支付密码支付
     * @param userId 用户id
     * @param paymentPassword 用户支付密码
     * @return 是否正确
     */
    public Integer verificationPay(String userId,String orderId, String paymentPassword) throws Exception;

    /**
     * 验证人脸支付
     * @param image 人脸图片
     * @param userId 用户id
     * @param videoFile 人脸视频
     * @return
     */
    public String verificationFace(String image, String userId, InputStream videoFile,String orderId) throws Exception;


    /**
     * 支付宝支付
     * @param userId 用户id
     * @param orderId 订单id
     * @return 支付宝收银台
     */
    public String alipayPay(String userId,String orderId, HttpServletRequest request) throws Exception;

    /**
     * 确认订单
     * @param order 订单对象
     * @return 是否成功
     */
    public String confirmOrder(Order order, HttpServletRequest request) throws Exception;

    /**
     * 付款成功 推送消息
     * @param order
     * @return
     * @throws Exception
     */
    public Integer updateOrders(Order order) throws Exception;

    /**
     * 查询订单详细
     * @param userId 用户id
     * @param orderId 订单id
     * @return 订单对象
     */
    public Order findDetailedOrder(String userId,String orderId);
    /**
     * 生成订单号 时间戳加当天流水号
     * 取当天最后一笔订单的流水号加一
     * 今天第一笔订单流水号为1000000
     * @return
     */
    public String generateOrderId();

    /**
     * 购物车商品信息添加到订单
     * @param initialize 购物车id数组
     * @param orderId 订单id
     * @return
     */
    public BigDecimal addProduct (Integer[] initialize , String orderId);


    /**
     * 支付成功用于发送邮件
     * @param userId
     * @return
     * @throws Exception
     */
    public Integer emailNotification(String userId) throws Exception;

    /**
     * 支付成功 推送订单消息
     * @return
     * @throws Exception
     */
    public Integer notificationUser(Order order,String totals) throws Exception;

    /**
     * 修改订单
     * @param order 订单对象
     * @return
     */
    public Integer updateOrder(Order order) throws Exception;

    /**
     * 查询订单修改次数
     * @param userId 用户id
     * @param orderId 订单id
     * @return 修改次数
     */
    public Integer fenOrderTotal(String userId ,String orderId);

}
