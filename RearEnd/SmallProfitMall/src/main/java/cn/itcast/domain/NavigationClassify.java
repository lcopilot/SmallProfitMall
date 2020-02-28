package cn.itcast.domain;

import java.io.Serializable;

public class NavigationClassify implements Serializable {
    private int id;
    private int nid;
    private String classifyName;
    private String classifySite;

    public String getClassifyName() {
        return classifyName;
    }

    public void setClassifyName(String classifyName) {
        this.classifyName = classifyName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public String getClassifySite() {
        return classifySite;
    }

    public void setClassifySite(String classifySite) {
        this.classifySite = classifySite;
    }
}
