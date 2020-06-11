package cn.xgtd.service.impl;

import cn.xgtd.service.FilesService;
import cn.xgtd.util.file.PathUtil;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.core.util.UuidUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

/**
 * @author Kite
 * @date 2020/6/11
 */
@Service
public class FilesServiceImpl implements FilesService {


    /**
     * 文件上传
     * @param files 文件
     * @return 返回地址
     */
    @Override
    public String filesUpload(MultipartFile files) throws IOException {

        //文件地址
        String uuid = UUID.randomUUID().toString().replace("-", "").toLowerCase();
        //时间戳
        long time = System.currentTimeMillis();
        String fileName = uuid+time;
        String fileUrl = PathUtil.getImgBasePath()+fileName;
        File file = new File(fileUrl);
        String os = System.getProperty("os.name");
        //3.调用String类的常用成员方法判断并替换
        if(os.toLowerCase().startsWith("win")) {
            //判断文件夹是否存在
            if(!file.exists()){
                // 创建该文件夹
                file.mkdirs();
            }
        }else {
            if(!file.exists()){
                // 创建该文件夹
                file.mkdirs();
                //设置写权限，windows下不用此语句
                file.setWritable(true, false);
            }

        }
        files.transferTo(file);
        return fileUrl;
    }
}
