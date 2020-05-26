package cn.itcast.Test;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Iterator;

/**
 * @author Kite
 * @date 2020/5/5
 */
public class test {
    public static void main(String[] args) throws IOException {

        String week = "7";//表示周五
        switch(week){
            case "1" :System.out.println("爱学习");break;
            case "2" :System.out.println("学习使我感到快乐");break;
            case "3" :System.out.println("学习从来没有这么快乐过");break;
            case "4" :System.out.println("遇到志同道合的刘耀文");break;
            case "5" :System.out.println("在一起");break;
            case "6" :System.out.println("洗澡睡觉");break;
            case "7" :System.out.println("一起走向幸福人生:巅峰");break;
            default:System.out.println("遇到老王变了心");break;
        }

    }


}
