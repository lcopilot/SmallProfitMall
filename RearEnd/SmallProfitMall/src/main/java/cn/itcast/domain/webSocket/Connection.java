package cn.itcast.domain.webSocket;

public class Connection {
    //连接的用户id
    private String userId;
    //客户端传代码
    private String code;
    //客户端发送的数据
    private String message;


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "Connection{" +
                "userId='" + userId + '\'' +
                ", code='" + code + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
