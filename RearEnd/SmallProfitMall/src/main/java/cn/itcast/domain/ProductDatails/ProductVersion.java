package cn.itcast.domain.ProductDatails;

/**
 * 商品版本
 * @author Kite
 * @date 2020/5/24
 */
public class ProductVersion {
    /**商品规格id**/
    private Integer versionId;
    /**商品版本**/
    private String version;

    public Integer getVersionId() {
        return versionId;
    }

    public void setVersionId(Integer versionId) {
        this.versionId = versionId;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
