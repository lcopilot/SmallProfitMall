package cn.xgtd.util.baidu;

/**
 *周期枚举
 * @author ziyiingguixin.163.com
 * @date 2018/9/28 10:44
 */
public enum CycleEnum {

    DAY(1,"每天"),
    MONTH(2,"月"),
    SEASON(3,"季"),
    YEAR(4,"年"),
    WEEK(5,"周")


    ;
    private int codeId;
    private String message;

    CycleEnum(int codeId, String message) {
        this.codeId = codeId;
        this.message = message;
    }

    public static CycleEnum getCycle(int code){
        for (CycleEnum c : CycleEnum.values()) {
            if (c.codeId == code) {
                return c;
            }
        }
        return null;
    }

    public int getCodeId() {
        return codeId;
    }

    public void setCodeId(int codeId) {
        this.codeId = codeId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
