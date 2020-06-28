package cn.xgtd.test;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Kite
 * @date 2020/6/27
 */
public class testList {
    List list3 = new ArrayList();

    public List getList() {
        return list3;
    }

    public void setList(List list) {
        this.list3 = list;
    }

  public void  test() {
        List list = new ArrayList();
        list.add("1");
        list.add("2");
        list.add("1");
        list.add("2");
        list.add("3");

        List list1 = new ArrayList(list);
      setList(list);
      System.out.println(list1);
      System.out.println(list3);
    }

    public static void main(String[] args) {
        testList testList = new testList();
        testList.test();
    }
}
