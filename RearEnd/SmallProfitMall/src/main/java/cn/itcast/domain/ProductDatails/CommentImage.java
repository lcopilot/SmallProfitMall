package cn.itcast.domain.ProductDatails;

/**
 * 评论图片对象
 * @author Kite
 * @date 2020/5/2
 */
public class CommentImage {

    private Integer id;

    /**评图片**/
    private String commentPicture;
    /**评论id**/
    private Integer commentId;



    public String getCommentPicture() {
        return commentPicture;
    }

    public void setCommentPicture(String commentPicture) {
        this.commentPicture = commentPicture;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
