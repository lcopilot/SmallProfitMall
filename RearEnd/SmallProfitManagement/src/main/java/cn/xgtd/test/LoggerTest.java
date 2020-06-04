package cn.xgtd.test;


import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Created with IntelliJ IDEA.
 * User: 陈浩翔.
 * Date: 2018/1/8.
 * Time: 下午 8:05.
 * Explain:日志测试
 */

@RunWith(SpringRunner.class)
@Slf4j
public class LoggerTest {

    /**
     * 二、注解方式实现日志
     */
    @Test
    public  void test2(){
        log.info("次数");
    }

}
