package cn.itcast.Test;

/**
 * @author Kite
 * @date 2020/5/5
 */
public class test {
    public static void main(String[] args) {
        String base64Prefix ="data:image/jpeg;base64";
        String prefix="data:image/jpeg;base64,asdasdas";
        String file = prefix.substring(base64Prefix.length());
        System.out.println(file);
    }
}
