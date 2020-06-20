package cn.xgtd.test;

/**
 * @author Kite
 * @date 2020/6/20
 */
public class test3 {
    public static void main(String[] args) {
        String str = "http.flv";

        String str3=str.substring(0, str.indexOf("."));
        System.out.println(str3);
    }
}
