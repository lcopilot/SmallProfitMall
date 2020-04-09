package cn.itcast.service;

import cn.itcast.domain.address.Address;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import javax.ws.rs.Path;
import java.io.IOException;
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
     * 验证支付密码
     * @param userId 用户id
     * @param faceRecognition 用户支付密码
     * @return 是否正确
     */
    public Boolean verificationPay(String userId , String faceRecognition) throws Exception;

    /**
     * 验证人脸
     * @param image 人脸图片
     * @param userId 用户id
     * @param videoFile 人脸视频
     * @return
     */
    public String verificationFace(String image, String userId, InputStream videoFile) throws Exception;


    /**
     * 确认订单
     * @param order 订单对象
     * @return 是否成功
     */
    public Integer confirmOrder(Order order) throws Exception;


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
    public Integer updateOrder(Order order);


}
