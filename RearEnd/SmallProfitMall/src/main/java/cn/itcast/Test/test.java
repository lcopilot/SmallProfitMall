package cn.itcast.Test;

/**
 * @author Kite
 * @date 2020/5/29
 */
public class test {
    public static void main(String[] args) {

        try
        {
            System.out.println(1);
            Thread.sleep(5000);
            System.out.println(0);
        }
        catch (InterruptedException e)
        {
            e.printStackTrace();
        }

    }
}
