package cn.xgtd.test;

/**
 * @author Kite
 * @date 2020/6/20
 */
public class test3 {
    public static void main(String[] args) {
        String str = "http://productdata.isdfmk.xyz/4c9164995cd67e2f5038f9ee450f4d88.flv_4c9164995cd67e2f5038f9ee450f4d88.flv";
        String str1=str.substring(0, str.indexOf("z/"));
        String str2=str.substring(str1.length()+2, str.length());
        String str3=str2.substring(0, str2.indexOf("_"));
        System.out.println(str3);
    }
}
