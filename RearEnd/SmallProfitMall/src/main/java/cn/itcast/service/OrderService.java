package cn.itcast.service;

import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;

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
}
