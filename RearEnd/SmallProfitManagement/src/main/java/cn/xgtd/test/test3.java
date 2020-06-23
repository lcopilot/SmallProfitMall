package cn.xgtd.test;

/**
 * @author Kite
 * @date 2020/6/20
 */
public class test3 {
    public static void main(String[] args) {
        String image = "http:productdata.isdfmk.xyz0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4";

        String s = "'sds gdasda" + "\n" + "edaeafd'";
        System.out.println("转换前："+s);
        s = s.replaceAll("\r", "");
        System.out.println("转换后："+s);

    }
}
