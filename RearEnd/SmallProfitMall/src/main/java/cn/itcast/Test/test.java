package cn.itcast.Test;

import java.text.NumberFormat;

/**
 * @author Kite
 * @date 2020/5/5
 */
public class test {
    public static void main(String[] args) {
        int a=3;
        int b=2;
        NumberFormat numberFormat = NumberFormat.getInstance();
        numberFormat.setMaximumFractionDigits(2);
        String result = numberFormat.format((float)a/(float)b*100);
        Double s = Double.parseDouble(result);
        System.out.println(s);
        System.out.println("a和b的百分比为:" + result + "%");
    }
}
