package cn.itcast.response;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

@Data
@ToString
@Component
public class ReturnResult {
    private String img;
}
