package cn.xgtd.test;

/**
 * @author Kite
 * @date 2020/6/20
 */
public class test3 {
    public static void main(String[] args) {
        String image = "http:productdata.isdfmk.xyz0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4";

        String str = null;
        try {
            str = image.substring(0, image.indexOf("/"));
        } catch (Exception e) {
            System.out.println(str);
        }

    }
}
