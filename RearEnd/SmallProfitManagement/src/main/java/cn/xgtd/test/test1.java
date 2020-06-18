//package cn.xgtd.test;
//
//import javax.print.attribute.standard.NumberUp;
//import java.util.*;
//
///**
// * @author Kite
// * @date 2020/6/17
// */
//public class test1 {
//
//
//
//    ArrayList<Object> objects = new ArrayList<>();
//
//    public static   void main(String[] args) {
//        List<String> as = new ArrayList<>();
//        as.add("1");
//        as.add("2");
//        as.add("3");
//        List<String> ac = new ArrayList<>();
//        ac.add("1");
//        ac.add("2");
//        ac.add("3");
//        List<String> af = new ArrayList<>();
//        af.add("1");
//        af.add("2");
//        af.add("3");
//
//        List<List<String>> ab = new ArrayList<>();
//        ab.add(as);
//        ab.add(ac);
//        ab.add(af);
//
//        String [][] array = new String [ab.size()][];
//        for (int i = 0; i <ab.size() ; i++) {
//            array[i]= new String[ab.get(i).size()];
//            for (int j = 0; j <ab.get(i).size() ; j++) {
//                array[i][j]= ab.get(i).get(j);
//            }
//
//        }
//        String[] num = new String [array.length];
//        List<String[] > asdad = new ArrayList<>();
//        test1 test1 = new test1();
//        test1.sort(array,array.length, 0, num);
//        System.out.println(objects);
//
//        System.out.println(asdad);
////        for (int i = 0; i <kl.size() ; i++) {
////            String s = Arrays.toString(kl.get(i));
////            System.out.println(s);
////
////        }
//    }
//
//
//    public  String[] sort(String [][] array, int length, int index, String [] num) {
//
//        if (index == length ) {
//            String s = Arrays.toString(num);
//            System.out.println(num);
//            asda.add(num);
//            return num;
//        }
//
//        for (int j = 0; j < array[index].length; j++) {//数组中的每一位遍历一次
//            num[index] = array[index][j];
//            sort(array,length, index+1,num);
//        }
//        return null;
//    }
//
//
//
//
//
//
//
//
//    public static void sort(int[][] array, int length, int index, int[] num) {
//        if (index == length ) {
//            String s = Arrays.toString(num);
//            System.out.println(s);
//            return;
//        }
//
//        for (int j = 0; j < array[index].length; j++) {//数组中的每一位遍历一次
//            num[index] = array[index][j];
//            sort(array,length, index+1,num);
//        }
//
//
//
//
//
//
//
//}
