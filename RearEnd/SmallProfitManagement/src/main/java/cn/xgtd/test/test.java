package cn.xgtd.test;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 * @author Kite
 * @date 2020/6/8
 */
public class test {

    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<>();

        list.add("a");

        list.add("b");

        list.add("b");

        list.add("c");

        list.add("c");

        list.add("d");

        list.add("d");

        System.out.println(list);
        System.out.println(removeDuplicate(list));

    }
    public static List removeDuplicate(List list) {
        HashSet h = new HashSet(list);
        list.clear();
        list.addAll(h);
        return list;
    }
}
