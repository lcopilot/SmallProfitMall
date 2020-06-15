package cn.xgtd.domain.product;

/**
 * 商品属性种类
 * @author Kite
 * @date 2020/6/15
 */
public class AttributeType {
    /**属性种类id**/
    private Integer attributeTypeId;
    /**属性值**/
    private String value;
    /**属性类型**/
    private String title;

    public Integer getAttributeTypeId() {
        return attributeTypeId;
    }

    public void setAttributeTypeId(Integer attributeTypeId) {
        this.attributeTypeId = attributeTypeId;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
