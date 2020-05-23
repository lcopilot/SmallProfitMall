package cn.itcast.domain.productComment;

import java.io.Serializable;

/**
 * 追平图片对象
 * @author Kite
 * @date 2020/5/9
 */
public class SecondCommentImage implements Serializable {
    /**评论id**/
    private Integer secondCommentId;

    /**追评图片**/
    private String secondCommentPicture;

    public Integer getSecondCommentId() {
        return secondCommentId;
    }

    public void setSecondCommentId(Integer secondCommentId) {
        this.secondCommentId = secondCommentId;
    }

    public String getSecondCommentPicture() {
        return secondCommentPicture;
    }

    public void setSecondCommentPicture(String secondCommentPicture) {
        this.secondCommentPicture = secondCommentPicture;
    }
}
