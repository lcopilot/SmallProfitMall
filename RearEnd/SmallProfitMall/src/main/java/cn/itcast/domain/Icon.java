package cn.itcast.domain;

import java.io.Serializable;

public class Icon implements Serializable {
    private int id;
    private String icon;
    private String iconSite;
    private String iconSize;

    public String getIconSize() {
        return iconSize;
    }

    public void setIconSize(String iconSize) {
        this.iconSize = iconSize;
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
