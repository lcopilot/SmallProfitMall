package cn.itcast.domain.webSocket;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/3/28
 */
public class ConnectionReceive implements Serializable {
    private Connection message;
    private CallbackName callback;

    public Connection getMessage() {
        return message;
    }

    public void setMessage(Connection message) {
        this.message = message;
    }

    public CallbackName getCallback() {
        return callback;
    }

    public void setCallback(CallbackName callback) {
        this.callback = callback;
    }

    @Override
    public String toString() {
        return "ConnectionReceive{" +
                "message=" + message +
                ", callback=" + callback +
                '}';
    }
}
