package cn.xgtd.service;

import cn.xgtd.domain.file.BreakpointFile;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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
     * 查询断点文件
     * @param fileName 文件名
     * @param fileQuantity 文件碎片数量
     * @return
     */
    public Map findBreakpointFile(String fileName , Integer fileQuantity , Integer fileSize);

    /**
     * 文件上传
     * @param  fileName 文件名
     * @param files 文件
     * @return 返回地址
     */
    public Boolean filesUpload(String fileName , MultipartFile files) throws IOException;

    /**
     * 断点续传
     * @param fileName 文件名
     * @param position 断点位置
     * @return
     */
    public Integer filesBreakpointUpload(String fileName , MultipartFile files,Integer position) throws IOException;



    /**
     * 文件合并
     * @param fileName 文件名碎片
     * @return 合成的文件名
     */
    public String compositeFile(String fileName , Integer fileQuantity ,String  fileType , Boolean richText);


}
