package cn.itcast.domain;

import java.io.Serializable;
//右侧图标
public class Icon implements Serializable {
    private int id;
    private String icon;
    private String iconSite;
    private String iconName;

    public String getIconName() {
        return iconName;
    }

    public void setIconName(String iconName) {
        this.iconName = iconName;
    }

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
}
