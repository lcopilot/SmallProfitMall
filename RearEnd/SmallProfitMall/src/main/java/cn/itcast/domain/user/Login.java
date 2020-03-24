package cn.itcast.domain.user;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
//登录
@Component("login")
public class Login {

    private String name;
    private String tokens;
    private String uid;
    private String Image;

    public String getTokens() {
        return tokens;
    }

    public void setTokens(String tokens) {
        this.tokens = tokens;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getToken() {
        return tokens;
    }

    public void setToken(String token) {
        this.tokens = token;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }


}
