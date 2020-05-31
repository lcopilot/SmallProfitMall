package cn.itcast.util.ip;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class IP {
    public static void main(String[] args) throws IOException {
        HttpClient client = HttpClients.createDefault();// 创建默认http连接
        HttpPost post = new HttpPost("http://api.map.baidu.com/location/ip");// 创建一个post请求
        List<NameValuePair> paramList = new ArrayList<NameValuePair>();
        paramList.add(new BasicNameValuePair("ip", "47.95.222.110"));//传递的参数
        paramList.add(new BasicNameValuePair("ak", "BhNf2nu"));//传递的参数
        paramList.add(new BasicNameValuePair("sn", "2b91b2409107"));//传递的参数
        paramList.add(new BasicNameValuePair("coor", ""));//传递的参数
        // 把参转码后放入请求实体中
        HttpEntity entitya = new UrlEncodedFormEntity(paramList, "utf-8");
        post.setEntity(entitya);// 把请求实体放post请求中
        HttpResponse response = client.execute(post);// 用http连接去执行get请求并且获得http响应
        HttpEntity entity = response.getEntity();// 从response中取到响实体
        String html = EntityUtils.toString(entity);// 把响应实体转成文本

        String a="\u5317\u4eac\u5e02";
    }
}
