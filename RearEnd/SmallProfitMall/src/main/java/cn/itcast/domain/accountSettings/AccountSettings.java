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
    private Boolean paymentPasswords;

    public Boolean getPaymentPasswords() {
        return paymentPasswords;
    }

    public void setPaymentPasswords(Boolean paymentPasswords) {
        this.paymentPasswords = paymentPasswords;
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
}
