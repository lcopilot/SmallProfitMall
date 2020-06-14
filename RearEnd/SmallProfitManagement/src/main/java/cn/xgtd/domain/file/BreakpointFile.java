package cn.xgtd.domain.file;

/**
 * 断点文件
 * @author Kite
 * @date 2020/6/13
 */
public class BreakpointFile {
    /**文件名**/
    private String fileName;
    /**文件断点**/
    private Integer breakpoint;
    /**文件是否合成**/
    private Boolean composite;


    public Boolean getComposite() {
        return composite;
    }

    public void setComposite(Boolean composite) {
        this.composite = composite;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Integer getBreakpoint() {
        return breakpoint;
    }

    public void setBreakpoint(Integer breakpoint) {
        this.breakpoint = breakpoint;
    }
}
