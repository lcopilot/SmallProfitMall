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
    /**分片是否完整**/
    private Boolean breakpointFull;


    public Boolean getBreakpointFull() {
        return breakpointFull;
    }

    public void setBreakpointFull(Boolean breakpointFull) {
        this.breakpointFull = breakpointFull;
    }

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
