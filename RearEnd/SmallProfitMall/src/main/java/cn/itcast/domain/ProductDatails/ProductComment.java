package cn.itcast.domain.ProductDatails;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author Kite
 * @date 2020/5/1
 */
public class ProductComment implements Serializable {
    /**评论id**/
    private Integer commentId;
    /**用户id**/
    private String userId;
    /**商品id**/
    private Integer productId;
    /**购买id**/
    private String purchaseId;
    /**评论文字内容**/
    private String textComment;
    /**评论视频**/
    private String videoComment;
    /**好评等级**/
    private Integer favorability;
    /**点赞数量**/
    private Integer likeQuantity;
    /**评论图片**/
    private String[] commentPicture;
    /**评论时间**/
    private Date commentTime;
    /**文件数组 图片 视频**/
    private MultipartFile[] files;

    /**是否匿名**/
    private Boolean anonymity;

    public Boolean getAnonymity() {
        return anonymity;
    }

    public void setAnonymity(Boolean anonymity) {
        this.anonymity = anonymity;
    }

    public MultipartFile[] getFiles() {
        return files;
    }

    public void setFiles(MultipartFile[] files) {
        this.files = files;
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(String purchaseId) {
        this.purchaseId = purchaseId;
    }

    public String getTextComment() {
        return textComment;
    }

    public void setTextComment(String textComment) {
        this.textComment = textComment;
    }

    public String getVideoComment() {
        return videoComment;
    }

    public void setVideoComment(String videoComment) {
        this.videoComment = videoComment;
    }

    public Integer getFavorability() {
        return favorability;
    }

    public void setFavorability(Integer favorability) {
        this.favorability = favorability;
    }

    public Integer getLikeQuantity() {
        return likeQuantity;
    }

    public void setLikeQuantity(Integer likeQuantity) {
        this.likeQuantity = likeQuantity;
    }

    public String[] getCommentPicture() {
        return commentPicture;
    }

    public void setCommentPicture(String[] commentPicture) {
        this.commentPicture = commentPicture;
    }
}
