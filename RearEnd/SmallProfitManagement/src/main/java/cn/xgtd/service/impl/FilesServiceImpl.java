package cn.xgtd.service.impl;

import cn.xgtd.service.FilesService;
import cn.xgtd.util.file.PathUtil;
import cn.xgtd.util.file.SplitAndMergeFile;
import cn.xgtd.util.redis.RedisUtil;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.core.util.UuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author Kite
 * @date 2020/6/11
 */
@Service
public class FilesServiceImpl implements FilesService {

    @Autowired
    RedisUtil redisUtil;
    /**
     * 生成文件名
     * @return
     */
    @Override
    public String getFileName() {
        String fileName = null;
        do {
            //uuid
            String uuid = UUID.randomUUID().toString().replace("-", "").toLowerCase();
            //时间戳
            long time = System.currentTimeMillis();
            fileName = uuid+"_"+time;
        }while (redisUtil.get(fileName)!=null);
        redisUtil.set(fileName,fileName);
        return fileName;
    }

    /**
     * 文件上传
     * @param  fileName 文件名
     * @param files 文件
     * @return 返回地址
     */
    @Override
    public String filesUpload(String fileName , MultipartFile files) throws IOException {

        //文件地址
        String fileUrl = PathUtil.getImgBasePath()+"/"+fileName;
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

    /**
     * 文件合成
     * @param fileName 文件名碎片
     * @return
     */
    @Override
    public String compositeFile(String fileName , Integer fileQuantity ,String  fileType , Boolean richText) {
        //合成后文件名
        String compositeFileName = fileName+"."+fileType;
        //文件地址
       String fileUrl =  PathUtil.getImgBasePath();
        //碎片文件名
        List<String> fileNames = new ArrayList<>();
        for (int i = 0; i <fileQuantity ; i++) {
            fileNames.add(fileUrl+"/"+fileName+"-"+i+"."+fileType) ;
        }
        SplitAndMergeFile splitAndMergeFile = new SplitAndMergeFile();

        splitAndMergeFile.merge(fileNames,fileUrl,compositeFileName);
        return compositeFileName;
    }

}
