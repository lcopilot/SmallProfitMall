package cn.itcast.domain.user;
//用户实体类
import org.springframework.stereotype.Component;
import java.io.Serializable;
import java.util.List;

@Component("user")
public class User implements Serializable {
    private Integer id;
    private String uid;
    private String name;
    private String password;
    private String sex;
    private String phone;
    private String email;
    private String Image;
    private String token;
    private String verify;
    private String birthday;
    private List birthdays;

    public List getBirthdays() {
        return birthdays;
    }

    public void setBirthdays(List birthdays) {
        this.birthdays = birthdays;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getVerify() {
        return verify;
    }

    public void setVerify(String verify) {
        this.verify = verify;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", uid='" + uid + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", Image='" + Image + '\'' +
                ", token='" + token + '\'' +
                ", verify='" + verify + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
