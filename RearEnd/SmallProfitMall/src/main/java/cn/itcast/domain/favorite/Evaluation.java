package cn.itcast.domain.favorite;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

//收藏
public class Evaluation  implements Serializable {
    private int evaluationId;
    private int productId;
    private String userId;
    private String sign;
    private int[] productIds;
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
