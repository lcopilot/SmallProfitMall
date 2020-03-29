package cn.itcast.response.news;

import cn.itcast.domain.news.News;
import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author Kite
 * @date 2020/3/28
 */
@Data
@ToString
@Component
public class Page<T> {
    //消息数据
    private List<News> news;
    //总记录数
    private Integer totalCount;
    //总页数
    private Integer totalPage;
}
