package cn.itcast.domain.ProductDatails;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author Kite
 * @date 2020/5/9
 */
public class SecondComment implements Serializable {
    /**追评id**/
    private Integer  secondCommentId;
    /**评论id**/
    private Integer commentId;
    /**追评内容**/
    private String textSecondComment;
    /**追平视频**/
    private String videoSecondComment;
    /**购买id**/
    private Integer purchaseId;
    /**追评时间**/
    private Date secondCommentTime;
    /**接收追加的评论内容 前端暂时无法修改 **/
    private String textComment;
    /**图片视频base64**/
    String[] files;
    /**追评图片**/
    private List<String> secondCommentPicture;
    /**视频标志**/
    private Boolean secondCommentVideoSign;


    public Integer getSecondCommentId() {
        return secondCommentId;
    }

    public void setSecondCommentId(Integer secondCommentId) {
        this.secondCommentId = secondCommentId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getTextSecondComment() {
        return textSecondComment;
    }

    public void setTextSecondComment(String textSecondComment) {
        this.textSecondComment = textSecondComment;
    }

    public String getVideoSecondComment() {
        return videoSecondComment;
    }

    public void setVideoSecondComment(String videoSecondComment) {
        this.videoSecondComment = videoSecondComment;
    }

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
        this.purchaseId = purchaseId;
    }

    public Date getSecondCommentTime() {
        return secondCommentTime;
    }

    public void setSecondCommentTime(Date secondCommentTime) {
        this.secondCommentTime = secondCommentTime;
    }

    public String getTextComment() {
        return textComment;
    }

    public void setTextComment(String textComment) {
        this.textComment = textComment;
    }

    public String[] getFiles() {
        return files;
    }

    public void setFiles(String[] files) {
        this.files = files;
    }

    public List<String> getSecondCommentPicture() {
        return secondCommentPicture;
    }

    public void setSecondCommentPicture(List<String> secondCommentPicture) {
        this.secondCommentPicture = secondCommentPicture;
    }

    public Boolean getSecondCommentVideoSign() {
        return secondCommentVideoSign;
    }

    public void setSecondCommentVideoSign(Boolean secondCommentVideoSign) {
        this.secondCommentVideoSign = secondCommentVideoSign;
    }
}
