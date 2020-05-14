package cn.itcast.domain.homepag;

import java.io.Serializable;
//右侧图标
public class Icon implements Serializable {
    /**图标id**/
    private int id;
    /**图标**/
    private String icon;
    /**图标链接**/
    private String iconSite;
    /**图标名字**/
    private String iconName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getIconSite() {
        return iconSite;
    }

    public void setIconSite(String iconSite) {
        this.iconSite = iconSite;
    }

    public String getIconName() {
        return iconName;
    }

    public void setIconName(String iconName) {
        this.iconName = iconName;
    }
}
