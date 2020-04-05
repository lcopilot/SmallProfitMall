package cn.itcast.Test;

import java.math.BigDecimal;

/**
 * @author Kite
 * @date 2020/4/3
 */
public class test {
    public static void main(String[] args) {
        BigDecimal balance=new BigDecimal("600.11");
        BigDecimal total =new BigDecimal("600");
        //保留两位小数
        int scale=2;
        String a = balance.subtract(total).setScale(scale, BigDecimal.ROUND_HALF_UP).toString();
        System.out.println(a);
    }
}
