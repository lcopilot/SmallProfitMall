package cn.itcast.util.logic;

import com.alibaba.fastjson.JSONException;
import com.fasterxml.jackson.databind.ObjectMapper;
import net.sf.json.JSONObject;

import java.io.IOException;

/**
 * json转换
 */
public class ConversionJson {

    public static<T> String objectToJson(T obj) throws JSONException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        // Convert object to JSON string
        String jsonStr = "";
        try {
            jsonStr =  mapper.writeValueAsString(obj);
        } catch (IOException e) {
            throw e;
        }
        return JSONObject.fromObject(obj).toString();
    }
}
