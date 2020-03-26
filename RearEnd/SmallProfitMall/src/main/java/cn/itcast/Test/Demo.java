package cn.itcast.Test;
import com.maxmind.geoip2.DatabaseReader;
import com.maxmind.geoip2.model.CityResponse;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;

/**
 * @author 言曌
 * @date 2020/3/17 3:23 下午
 */

public class Demo {

    public static void main(String[] args) {

        // IP V4
        String ip = "113.87.18.136";
        // IP V6 也是可以的
        DatabaseReader reader = null;
        CityResponse response = null;
        try {
            File database = new File("/Users/liuyanzhao/code/sensboot/src/main/java/GeoLite2-City.mmdb");
            // 读取数据库内容
            reader = new DatabaseReader.Builder(database).build();
            InetAddress ipAddress = InetAddress.getByName(ip);
            // 获取查询结果
            response = reader.city(ipAddress);
            System.out.println(response);
        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();

                }
            }

        }
    }
}