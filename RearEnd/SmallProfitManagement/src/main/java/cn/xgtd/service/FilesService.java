package cn.xgtd.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * @author Kite
 * @date 2020/6/11
 */
public interface FilesService {

    /**
     * 生成文件名
     * @return
     */
    public String getFileName();

    /**
     * 文件上传
     * @param  fileName 文件名
     * @param files 文件
     * @return 返回地址
     */
    public String filesUpload(String fileName , MultipartFile files) throws IOException;


}
