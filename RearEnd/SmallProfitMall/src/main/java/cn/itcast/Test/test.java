package cn.itcast.Test;

/**
 * @author Kite
 * @date 2020/4/3
 */
public class test {

    public static void main(String[] args) {

        // run in a second

        // 每一秒钟执行一次

        final long timeInterval = 1000;
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                while (true) {
                    System.out.println("Hello, stranger");
                    try {

                        // sleep()：同步延迟数据，并且会阻塞线程

                        Thread.sleep(timeInterval);

                    } catch (InterruptedException e) {

                        e.printStackTrace();

                    }

                }

            }

        };

        //创建定时器

        Thread thread = new Thread(runnable);

        //开始执行

        thread.start();

    }


}
