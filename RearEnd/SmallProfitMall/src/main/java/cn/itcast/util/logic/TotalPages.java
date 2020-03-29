package cn.itcast.util.logic;

/**
 * @author Kite
 * @date 2020/3/29
 */
public class TotalPages {
    /**
     * 计算总页数
     * @param pageSize 每页显示个数
     * @param totalCount 总数量
     * @return
     */
    public static Integer totalPages(Integer pageSize , Integer totalCount) {
        //数据总量
        int total = totalCount;
        //一页显示条数
        int row = pageSize;
        //总页数
        int totalPages;
        totalPages = total / row;

        if (total % row != 0) {
            totalPages++;
        }
        return (total - 1) / row + 1;
    }
}
