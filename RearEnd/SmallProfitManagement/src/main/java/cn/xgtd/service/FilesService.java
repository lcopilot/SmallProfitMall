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
     * 查询文件否存在
     * @param fileName 文件名
     * @param fileQuantity 文件碎片数量
     * @param fileSize 文件总大小
     * @return 是否存在 是否存在断点 断点位置 是否合成
     */
    public Map findBreakpointFile(String fileName , Integer fileQuantity , Integer fileSize);

    /**
     * 文件上传
     * @param  fileName 文件名
     * @param files 文件
     * @return
     */
    public Boolean filesUpload(String fileName , MultipartFile files) throws Exception;

    /**
     * 断点续传
     * @param fileName 文件名
     * @param position 断点位置
     * @return
     */
    public Integer filesBreakpointUpload(String fileName , MultipartFile files,Integer position) throws IOException;


    /**
     * 文件合成
     * @param fileName 文件名
     * @param fileQuantity 文件碎片数量
     * @param fileType 文件类型
     * @param richText 是否富文本
     * @param video 是否视频
     * @return
     * @throws IOException
     */
    public String compositeFile(String fileName , Integer fileQuantity ,String  fileType ,Boolean richText, Boolean video) throws IOException;


}
