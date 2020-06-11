package cn.xgtd.test;

import cn.xgtd.util.file.SplitAndMergeFile;

import java.util.*;

/**
 * @author Kite
 * @date 2020/6/8
 */
public class test {

    public static void main(String[] args) {
        String [] a = {"D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-0.jpg",
                "D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-1.jpg",
                    "D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-2.jpg",
                "D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-3.jpg",
                "D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-4.jpg"};
        List<String> f = new ArrayList<>();
        f.add("D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-0.jpg");
        f.add("D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-1.jpg");
        f.add("D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-2.jpg");
        f.add( "D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-3.jpg");
        f.add("D:\\javaweb\\a430d932cc23486fa0eff739bbe6f9bc1591870092148-4.jpg");
        SplitAndMergeFile splitAndMergeFile = new SplitAndMergeFile();
        splitAndMergeFile.merge(f,"D:\\javaweb\\","ssss");
    }
}
