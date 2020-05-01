package cn.itcast.domain.ProductDatails;

import java.util.List;

/**
 * @author Kite
 * @date 2020/5/1
 */
public class ProductComment {
    /**评论id**/
    private Integer commentId;
    /**用户id**/
    private String userId;
    /**商品idid**/
    private Integer productId;
    /**购买id**/
    private String purchaseId;
    /**评论文字内容**/
    private String textComment;
    /**评论视频**/
    private String videoComment;
    /**好评等级**/
    private String favorability;
    /**点赞数量**/
    private Integer likeQuantity;
    /**评论图片**/
    private List<String> commentPicture;

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

    public String getFavorability() {
        return favorability;
    }

    public void setFavorability(String favorability) {
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
