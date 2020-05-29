package cn.itcast.domain.homepag;

import java.io.Serializable;
import java.util.List;

/**
 * 轮播图
 * @author Kite
 * @date 2020/5/27
 */
public class Slideshow  implements Serializable {
    /**图片**/
    private String image;
    /**图片地址**/
    private String site;
    /**图片类型 1为大图片 2为小图片 **/
    private Integer imageType;

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getImageType() {
        return imageType;
    }

    public void setImageType(Integer imageType) {
        this.imageType = imageType;
    }
}
