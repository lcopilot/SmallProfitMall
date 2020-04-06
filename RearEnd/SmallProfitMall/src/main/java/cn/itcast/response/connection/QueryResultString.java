package cn.itcast.response.connection;

import cn.itcast.domain.news.News;
import com.alibaba.fastjson.JSONObject;
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
public class QueryResultString<T> {
    //未读数量
    private Integer unreadQuantity;
    //消息集合
    private List<News> news;
}
