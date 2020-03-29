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
//    //消息内容
//    private NewsContent newsContent;
    //消息种类
    private int newsType;
    //消息内容id
    private int contentId;
    //消息时间
    private String newsTime;
    //消息内容
    private String newsContent;
    //消息标注
    private Boolean sign;
    //消息标题
    private String title;
    //消息代码
    private String code;

    public String getCode() {
        return code;
    }

    public int getNewsType() {
        return newsType;
    }

    public void setNewsType(int newsType) {
        this.newsType = newsType;
    }

    public int getContentId() {
        return contentId;
    }

    public void setContentId(int contentId) {
        this.contentId = contentId;
    }

    public String getNewsTime() {
        return newsTime;
    }

    public void setNewsTime(String newsTime) {
        this.newsTime = newsTime;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public Boolean getSign() {
        return sign;
    }

    public void setSign(Boolean sign) {
        this.sign = sign;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setCode(String code) {
        this.code = code;
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
                ", newsType=" + newsType +
                ", contentId=" + contentId +
                ", newsTime='" + newsTime + '\'' +
                ", newsContent='" + newsContent + '\'' +
                ", sign=" + sign +
                ", title='" + title + '\'' +
                ", code='" + code + '\'' +
                '}';
    }
}
