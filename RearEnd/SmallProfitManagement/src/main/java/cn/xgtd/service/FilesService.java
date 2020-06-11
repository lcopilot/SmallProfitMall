package cn.xgtd.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * @author Kite
 * @date 2020/6/11
 */
public interface FilesService {

    /**
     * 文件上传
     * @param file 文件
     * @return 返回地址
     */
    public String filesUpload(MultipartFile file) throws IOException;
}
