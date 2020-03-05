package cn.itcast.domain;

import org.springframework.stereotype.Component;

import java.util.List;
//分类集合返回
@Component
public class Classification {
    private List<Navigation> navigations;
    private List<NavigationClassify> navigationClassify;

    public List<Navigation> getNavigations() {
        return navigations;
    }

    public void setNavigations(List<Navigation> navigations) {
        this.navigations = navigations;
    }

    public List<NavigationClassify> getNavigationClassify() {
        return navigationClassify;
    }

    public void setNavigationClassify(List<NavigationClassify> navigationClassify) {
        this.navigationClassify = navigationClassify;
    }
}
