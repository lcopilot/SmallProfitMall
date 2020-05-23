package cn.itcast.domain.productComment;

import java.io.Serializable;

/**
 * 评论数量
 * @author Kite
 * @date 2020/5/10
 */
public class CommentQuantity implements Serializable {
    /**全部评论数量**/
    private Integer allCommentQuantity;
    /**有图评论数量**/
    private Integer imageCommentQuantity;
    /**有视频评论数量**/
    private Integer videoCommentQuantity;
    /**追评数量**/
    private Integer secondCommentQuantity;
    /**好评数量**/
    private Integer goodCommentQuantity;
    /**中评数量**/
    private Integer ordinaryCommentQuantity;
    /***差评数量*/
    private Integer differenceCommentQuantity;
    /**好评度**/
    private Double goodCommentPercentage;


    public Double getGoodCommentPercentage() {
        return goodCommentPercentage;
    }

    public void setGoodCommentPercentage(Double goodCommentPercentage) {
        this.goodCommentPercentage = goodCommentPercentage;
    }

    public Integer getAllCommentQuantity() {
        return allCommentQuantity;
    }

    public void setAllCommentQuantity(Integer allCommentQuantity) {
        this.allCommentQuantity = allCommentQuantity;
    }

    public Integer getImageCommentQuantity() {
        return imageCommentQuantity;
    }

    public void setImageCommentQuantity(Integer imageCommentQuantity) {
        this.imageCommentQuantity = imageCommentQuantity;
    }

    public Integer getVideoCommentQuantity() {
        return videoCommentQuantity;
    }

    public void setVideoCommentQuantity(Integer videoCommentQuantity) {
        this.videoCommentQuantity = videoCommentQuantity;
    }

    public Integer getSecondCommentQuantity() {
        return secondCommentQuantity;
    }

    public void setSecondCommentQuantity(Integer secondCommentQuantity) {
        this.secondCommentQuantity = secondCommentQuantity;
    }

    public Integer getGoodCommentQuantity() {
        return goodCommentQuantity;
    }

    public void setGoodCommentQuantity(Integer goodCommentQuantity) {
        this.goodCommentQuantity = goodCommentQuantity;
    }

    public Integer getOrdinaryCommentQuantity() {
        return ordinaryCommentQuantity;
    }

    public void setOrdinaryCommentQuantity(Integer ordinaryCommentQuantity) {
        this.ordinaryCommentQuantity = ordinaryCommentQuantity;
    }

    public Integer getDifferenceCommentQuantity() {
        return differenceCommentQuantity;
    }

    public void setDifferenceCommentQuantity(Integer differenceCommentQuantity) {
        this.differenceCommentQuantity = differenceCommentQuantity;
    }
}
