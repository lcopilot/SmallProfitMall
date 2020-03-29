package cn.itcast.domain.news;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/3/29
 */
public class NewsContent implements Serializable {

    //消息种类
    private int newsType;
    //消息id
    private int newsId;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Boolean getSign() {
        return sign;
    }

    public void setSign(Boolean sign) {
        this.sign = sign;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
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


    @Override
    public String toString() {
        return "NewsContent{" +
                ", newsType=" + newsType +
                ", newsId=" + newsId +
                ", contentId=" + contentId +
                ", newsTime='" + newsTime + '\'' +
                ", newsContent='" + newsContent + '\'' +
                ", sign=" + sign +
                '}';
    }
}
