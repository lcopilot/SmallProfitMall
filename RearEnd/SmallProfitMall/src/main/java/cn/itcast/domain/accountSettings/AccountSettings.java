package cn.itcast.domain.accountSettings;

/**
 * @author Kite
 * @date 2020/4/1
 */
public class AccountSettings {
    //支付密码
    private String paymentPassword;
    //是否开启人脸识别
    private Boolean faceRecognition;

    //支付密码是否存在
    private Boolean paymentPasswordExists;

    private String faceToken;

    public String getFaceToken() {
        return faceToken;
    }

    public void setFaceToken(String faceToken) {
        this.faceToken = faceToken;
    }

    public String getPaymentPassword() {
        return paymentPassword;
    }

    public void setPaymentPassword(String paymentPassword) {
        this.paymentPassword = paymentPassword;
    }

    public Boolean getFaceRecognition() {
        return faceRecognition;
    }

    public void setFaceRecognition(Boolean faceRecognition) {
        this.faceRecognition = faceRecognition;
    }

    public Boolean getPaymentPasswordExists() {
        return paymentPasswordExists;
    }

    public void setPaymentPasswordExists(Boolean paymentPasswordExists) {
        this.paymentPasswordExists = paymentPasswordExists;
    }
}