package cn.xgtd.response.pagination;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 用于返回带分页的数据
 * @author Kite
 * @date 2020/4/19
 */
@Data
@ToString
@Component
public class Pagination<T> {

    /**数据集合*/
    private List<?> list;

    /**总数量**/
    private Long totalCount;

    /**总页数**/
    private Integer totalPage;

}
