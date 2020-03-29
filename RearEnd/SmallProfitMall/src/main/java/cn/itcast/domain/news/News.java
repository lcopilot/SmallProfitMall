package cn.itcast.domain.news;

import java.io.Serializable;
import java.util.List;

/**
 * @author Kite
 * @date 2020/3/29
 */
public class News  implements Serializable {
    //消息id
    private int id;
    //用户id
    private String userId;
    //消息推送者名字
    private String senderName;
    //消息推送者头像
    private String senderAvatar;
    //消息状态
    private String newsStatus;
    //消息内容id
    private int newsId;
    //消息内容
    private List<NewsContent> newsContent;



    public List<NewsContent> getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(List<NewsContent> newsContent) {
        this.newsContent = newsContent;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getSenderName() {
        return senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getSenderAvatar() {
        return senderAvatar;
    }

    public void setSenderAvatar(String senderAvatar) {
        this.senderAvatar = senderAvatar;
    }

    public String getNewsStatus() {
        return newsStatus;
    }

    public void setNewsStatus(String newsStatus) {
        this.newsStatus = newsStatus;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", senderName='" + senderName + '\'' +
                ", senderAvatar='" + senderAvatar + '\'' +
                ", newsStatus='" + newsStatus + '\'' +
                ", newsId=" + newsId +
                ", newsContent=" + newsContent +
                '}';
    }
}
