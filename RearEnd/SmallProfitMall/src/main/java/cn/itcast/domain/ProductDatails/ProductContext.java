package cn.itcast.domain.ProductDatails;

/**
 * @author Kite
 * @date 2020/5/24
 */
public class ProductContext {
    /**配置id**/
    private Integer attributeId;
    /**配置名称**/
    private String attributeContent;

    public Integer getAttributeId() {
        return attributeId;
    }

    public void setAttributeId(Integer attributeId) {
        this.attributeId = attributeId;
    }

    public String getAttributeContent() {
        return attributeContent;
    }

    public void setAttributeContent(String attributeContent) {
        this.attributeContent = attributeContent;
    }
}
