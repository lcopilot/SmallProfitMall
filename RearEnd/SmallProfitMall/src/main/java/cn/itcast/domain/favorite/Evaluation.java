package cn.itcast.domain.favorite;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

//收藏
public class Evaluation  implements Serializable {
    //收藏id
    private int evaluationId;
    //商品id 存入数据库
    private int productId;
    //用户id
    private String userId;

    //商品名称
    private String ProductName;

    //商品价格
    private  Double ProductPrice;

    //商品图片
    private String ImageSite;


    //是否收藏标志
    private String sign;
    //商品id 接收
    private int[] productIds;
    //收藏时间
    private Date evaluationTime;

    public int[] getProductIds() {
        return productIds;
    }

    public void setProductIds(int[] productIds) {
        this.productIds = productIds;
    }

    public int getEvaluationId() {
        return evaluationId;
    }

    public void setEvaluationId(int evaluationId) {
        this.evaluationId = evaluationId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public Date getEvaluationTime() {
        return evaluationTime;
    }

    public void setEvaluationTime(Date evaluationTime) {
        this.evaluationTime = evaluationTime;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public Double getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(Double productPrice) {
        ProductPrice = productPrice;
    }

    public String getImageSite() {
        return ImageSite;
    }

    public void setImageSite(String imageSite) {
        ImageSite = imageSite;
    }

    @Override
    public String toString() {
        return "Evaluation{" +
                "evaluationId=" + evaluationId +
                ", productId=" + productId +
                ", userId='" + userId + '\'' +
                ", sign='" + sign + '\'' +
                ", productIds=" + Arrays.toString(productIds) +
                ", evaluationTime=" + evaluationTime +
                '}';
    }
}
