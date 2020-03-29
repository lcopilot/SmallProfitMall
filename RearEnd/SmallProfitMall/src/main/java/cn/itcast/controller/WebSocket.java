package cn.itcast.controller;

import cn.itcast.domain.webSocket.Connection;
import cn.itcast.domain.webSocket.ConnectionReceive;
import cn.itcast.response.*;
import cn.itcast.response.connection.QueryResponseResultString;
import cn.itcast.response.connection.QueryResultString;
import cn.itcast.response.connection.SocketCommonCode;
import cn.itcast.util.logic.ConversionJson;
import net.sf.json.JSONObject;
import net.sf.json.JSONString;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

@ServerEndpoint("/notification/{userId}")
@Component
public class WebSocket {

    private static Logger logger = Logger.getLogger(WebSocket.class);
    public static final String code="81000";

    //静态变量，用来记录当前在线连接数。应该把它设计成线程安全的
    public static int onlineCount = 0;



    //在线用户的SOCKETsession(存储了所有的通信通道)
    public static final ConcurrentHashMap<String, Session> USER_ONLINE_MAP = new ConcurrentHashMap<>();

    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    public Session session;

    /**
     * 连接建立成功调用的方法
     * @param session  可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
     */
    @OnOpen
    public void onOpen(@PathParam("userId") String userId, Session session){
        this.session = session;

        if (USER_ONLINE_MAP.get(userId)!=null){
            USER_ONLINE_MAP.replace(userId,session);
        }else {
            USER_ONLINE_MAP.put(userId,this.session);
        }
        addOnlineCount();           //在线数加1
        System.out.println(USER_ONLINE_MAP.get(userId));
        System.out.println(USER_ONLINE_MAP.size());
        System.out.println("有新连接加入！当前在线人数为" + getOnlineCount());
    }


    /**
     * 连接关闭调用的方法
     */
    @OnClose
    public void onClose(){
        subOnlineCount();           //在线数减1
        System.out.println("关闭连接");
        try {
            if(session != null){
                session.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**
     * 收到客户端消息后调用的方法
     * @param message 客户端发送过来的消息
     * @param session 可选的参数
     */
    @OnMessage
    public String onMessage(String message, Session session) throws IOException {
        //返回的数据
        String redis="";

        //解析发送过来的数据,并封装到connection实体类
        Connection connection = (Connection) ConversionJson.JSONToObj(message, Connection.class);
        System.out.println(connection);
//        //连接正常
//        if (code.equals(connectionReceive.getMessage().getCode())){
//            QueryResultString result = new QueryResultString();
//            result.setCallback(connectionReceive.getCallback().getCallbackName());
//            return redis = ConversionJson.objectToJson(new QueryResponseResultString(CommonCode.normal,result));
//        }else{
//            return redis;
//        }
        if (code.equals(connection.getCode())){
            return redis= ConversionJson.objectToJson(new  QueryResponseResult(SocketCommonCode.redis,null));
        }else {
            return "";
        }

    }


    /**
     * 发生错误时调用
     * @param session
     * @param error
     */
    @OnError
    public void onError(Session session, Throwable error){
        System.out.println("发生错误");
        error.printStackTrace();
    }

    //单发消息
    public void sendMessage(String id,String message) throws IOException {
        Session session = USER_ONLINE_MAP.get(id);
        QueryResultString queryResultString = new QueryResultString();
        queryResultString.setCallback(message);
        session.getAsyncRemote().sendText(ConversionJson.objectToJson(new QueryResponseResultString(SocketCommonCode.redis,queryResultString)));
        //阻塞式（同步）
        //this.session.getBasicRemote().sendText(message);
        //非阻塞式（异步）
       // this.session.getAsyncRemote().sendText(message);
    }



    //群发消息
    public void sendMessageAll(String message) throws IOException{

    }

    public static synchronized int getOnlineCount() {
        return onlineCount;
    }

    public static synchronized void addOnlineCount() {
        WebSocket.onlineCount++;
    }

    public static synchronized void subOnlineCount() {
        WebSocket.onlineCount--;
    }


}