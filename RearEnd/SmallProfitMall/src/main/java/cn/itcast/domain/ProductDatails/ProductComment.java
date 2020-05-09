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
    /**用户头像**/
    private String userImage;
    /**用户名称**/
    private String userName;
    /**商品id**/
    private Integer productId;
    /**购买id**/
    private Integer purchaseId;
    /**评论文字内容**/
    private String textComment;
    /**评论视频**/
    private String videoComment;
    /**好评等级**/
    private Integer favorability;
    /**点赞数量**/
    private Integer likeQuantity;
    /**评论图片**/
    private List<String> commentPicture;
    /**评论时间**/
    private Date commentTime;

    /**商品配置**/
    private String productConfiguration;

    /**文件数组对象**/
    private String[] files;

    /**是否匿名**/
    private Boolean anonymity;

    /**追评对象**/
    private SecondComment secondComment;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public SecondComment getSecondComment() {
        return secondComment;
    }

    public void setSecondComment(SecondComment secondComment) {
        this.secondComment = secondComment;
    }

    public String[] getFiles() {
        return files;
    }

    public void setFiles(String[] files) {
        this.files = files;
    }

    public String getProductConfiguration() {
        return productConfiguration;
    }

    public void setProductConfiguration(String productConfiguration) {
        this.productConfiguration = productConfiguration;
    }

    public Boolean getAnonymity() {
        return anonymity;
    }

    public void setAnonymity(Boolean anonymity) {
        this.anonymity = anonymity;
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

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
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

    public List<String> getCommentPicture() {
        return commentPicture;
    }

    public void setCommentPicture(List<String> commentPicture) {
        this.commentPicture = commentPicture;
    }
}
