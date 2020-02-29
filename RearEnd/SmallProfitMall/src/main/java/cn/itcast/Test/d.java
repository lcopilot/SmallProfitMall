package cn.itcast.Test;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class d {
    public static void main(String[] args) {
        List a =new  ArrayList();
        a.add("1");
        a.add("2");

        List b = new ArrayList();
        b.add("3");
        b.add("4");

        List c = new ArrayList();
        c.add("5");
        c.add("6");

        List d = new ArrayList();
        d.add("7");
        d.add("8");

              //  System.out.println(a[0][0]);

        ArrayList[][] arrayLists1 = {{new ArrayList(a), new ArrayList(b)},{new ArrayList(c), new ArrayList(d)}};
        System.out.println(arrayLists1);

    }


}
