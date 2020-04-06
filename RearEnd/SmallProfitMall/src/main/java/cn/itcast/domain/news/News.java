package cn.itcast.domain.news;

import com.alibaba.fastjson.JSONObject;

import javax.xml.crypto.Data;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author Kite
 * @date 2020/3/29
 */
public class News  implements Serializable {
    //消息id
    private Integer id;
    //用户id
    private String userId;
    //消息推送者名字
    private String senderName;
    //消息推送者头像
    private String senderAvatar;
    //消息状态
    private String newsStatus;
    //推送者id
    private Integer senderId;
    //消息种类
    private Integer newsType;
    //消息内容id
    private Integer contentId;
    //消息时间
    private Date newsTime;
    //消息内容
    private String newsContent;
    //消息标注
    private Boolean sign;
    //消息标题
    private String title;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getSenderId() {
        return senderId;
    }

    public void setSenderId(Integer senderId) {
        this.senderId = senderId;
    }

    public Integer getNewsType() {
        return newsType;
    }

    public void setNewsType(Integer newsType) {
        this.newsType = newsType;
    }

    public Integer getContentId() {
        return contentId;
    }

    public void setContentId(Integer contentId) {
        this.contentId = contentId;
    }

    public Date getNewsTime() {
        return newsTime;
    }

    public void setNewsTime(Date newsTime) {
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

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", senderName='" + senderName + '\'' +
                ", senderAvatar='" + senderAvatar + '\'' +
                ", newsStatus='" + newsStatus + '\'' +
                ", senderId=" + senderId +
                ", newsType=" + newsType +
                ", contentId=" + contentId +
                ", newsTime='" + newsTime + '\'' +
                ", newsContent=" + newsContent +
                ", sign=" + sign +
                ", title='" + title + '\'' +
                '}';
    }
}
