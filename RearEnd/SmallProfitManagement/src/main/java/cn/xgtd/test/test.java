package cn.xgtd.test;

import java.util.*;

/**
 * @author Kite
 * @date 2020/6/8
 */
public class test {

    public static void main(String[] args) {
        //文件地址
        String uuid = UUID.randomUUID().toString().replace("-", "").toLowerCase();
        //时间戳
        long time = new Date().getTime();
        String fileName = uuid+time;
        System.out.println(fileName);
    }
}
