package cn.itcast.response.connection;

import cn.itcast.domain.news.News;
import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

/**
 * @author Kite
 * @date 2020/3/28
 */
@Data
@ToString
@Component
public class QueryResultString<T> {
    private String callback ;
    private News news;
}
