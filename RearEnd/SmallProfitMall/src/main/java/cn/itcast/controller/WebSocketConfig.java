package cn.itcast.controller;

import cn.itcast.Test.ChatHandshakeInterceptor;
import cn.itcast.Test.ChatWebSocketHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

/**
 *
 * 说明：WebScoket配置处理器
 * 把处理器和拦截器注册到spring websocket中
 * @author 传智.BoBo老师
 * @version 1.0
 * @date 2016年10月27日
 */
@Component("webSocketConfig")
//配置开启WebSocket服务用来接收ws请求
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {

    //注入处理器
    @Autowired
    private ChatWebSocketHandler webSocketHandler;
    @Autowired
    private ChatHandshakeInterceptor chatHandshakeInterceptor;

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        //添加一个处理器还有定义处理器的处理路径
        registry.addHandler(webSocketHandler, "ws://localhost:3167/{userId}").addInterceptors(chatHandshakeInterceptor);
        /*
         * 在这里我们用到.withSockJS()，SockJS是spring用来处理浏览器对websocket的兼容性，
         * 目前浏览器支持websocket还不是很好，特别是IE11以下.
         * SockJS能根据浏览器能否支持websocket来提供三种方式用于websocket请求，
         * 三种方式分别是 WebSocket, HTTP Streaming以及 HTTP Long Polling
         */
//        registry.addHandler(webSocketHandler, "ws://123.207.136.134:9010/ajaxchattest").addInterceptors(chatHandshakeInterceptor).withSockJS();
    }
}