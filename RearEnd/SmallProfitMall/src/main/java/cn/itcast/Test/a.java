package cn.itcast.Test;

public class a {
    public static void main(String[] args) {
        //隐藏手机号码中间四位
        String phoneNumber = "15567893456";
        String resultPhone= phoneNumber.replaceAll("(\\d{3})\\d{4}(\\d{4})","$1****$2");
        System.out.println("隐藏后的手机号：" + resultPhone);
//隐藏邮箱
        String email = "fhx210114@163.com";
        String resultEmail = email.replaceAll("(\\w?)(\\w+)(\\w)(@\\w+\\.[a-z]+(\\.[a-z]+)?)", "$1****$3$4");
        System.out.println("隐藏后的邮箱：" + resultEmail);
//隐藏身份证
        String idCard = "420116199302220456";
        String resultIdCard = idCard.replaceAll("(\\d{4})\\d{10}(\\w{4})","$1*****$2");
        System.out.println("隐藏后的身份证号：" + resultIdCard);
    }
}
