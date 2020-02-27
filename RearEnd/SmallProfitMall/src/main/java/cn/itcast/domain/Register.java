package cn.itcast.domain;

import java.io.Serializable;

//注册实体
public class Register implements Serializable {
    private String verify;
    private String phone;


    public String getVerify() {
        return verify;
    }

    public void setVerify(String verify) {
        this.verify = verify;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
