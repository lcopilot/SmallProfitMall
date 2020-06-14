package cn.xgtd.service.impl;

import cn.xgtd.domain.file.BreakpointFile;
import cn.xgtd.service.FilesService;
import cn.xgtd.util.file.FilesUpload;
import cn.xgtd.util.file.PathUtil;
import cn.xgtd.util.file.SplitAndMergeFile;
import cn.xgtd.util.redis.RedisUtil;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.core.util.UuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

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
     * 查询该文件是否服务器存在
     * @param fileName 文件名
     * @return
     */
    @Override
    public Map findBreakpointFile(String fileName , Integer fileQuantity) {
        Map map = new HashMap();
        List<BreakpointFile> breakpointFileList = new ArrayList<>();
        Boolean sign = true;
        //分片存在数量
        int existQuantity =-fileQuantity;
        int existQuantitys = 0;
        for (int i = 0; i <fileQuantity ; i++) {
           String  fileNames = fileName+"-"+i;
            Integer  breakpoint = (Integer) redisUtil.get(fileNames);
            if (breakpoint!=null){
                BreakpointFile breakpointFile = new BreakpointFile();
                breakpointFile.setFileName(fileNames);
                breakpointFile.setComposite(false);
                breakpointFile.setBreakpoint(breakpoint);
                breakpointFileList.add(breakpointFile);
                existQuantitys+=breakpoint;
            }
        }
        Boolean composite = false;
        String fileNameComposite = (String) redisUtil.get(fileName);
        if (fileNameComposite!=null){
            composite = true;
        }
        //文件上传成功
        sign = existQuantitys == existQuantity;
        map.put("breakpointFileList",breakpointFileList);
        map.put("sign",sign);
        //文件合成 合成的文件名
        map.put("fileNameComposite",fileNameComposite);
        //文件是否合成
        map.put("composite",composite);
        return map;
    }


    /**
     * 文件上传
     * @param  fileName 文件名
     * @param files 文件
     * @return 返回地址
     */
    @Override
    public Integer filesUpload(String fileName , MultipartFile files) throws IOException {
        //文件地址
        String fileUrl = PathUtil.getImgBasePath()+"/"+fileName;
        File file = new File(PathUtil.getImgBasePath());
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
        //转为文件输入流
        InputStream fileInputStream =  files.getInputStream();
        FileInputStream fileInputStream1 = (FileInputStream) fileInputStream;
        //文件上传 上传成功返回-1 上传失败返回失败数量
        Integer position = FilesUpload.breakTrans(fileInputStream1,fileUrl);
        redisUtil.set(fileName,position,259200000);
        return position;
    }

    /**
     * 断点续传
     * @param fileName 文件名
     * @param position 断点位置
     * @return
     */
    @Override
    public Integer filesBreakpointUpload(String fileName , MultipartFile files, Integer position) throws IOException {

        String fileUrl = PathUtil.getImgBasePath()+"//"+fileName;
        //转为文件输入流
        InputStream fileInputStream =  files.getInputStream();
        FileInputStream fileInputStream1 = (FileInputStream) fileInputStream;
        //文件续传断点
        Integer positions = FilesUpload.continueTrans(fileInputStream1,fileUrl,position);
        if (positions!=-1){
            redisUtil.set(fileName,positions,259200000);
        }


        return positions;
    }


    /**
     * 文件合成
     * @param fileName 文件名碎片
     * @return
     */
    @Override
    public String compositeFile(String fileName , Integer fileQuantity ,String  fileType , Boolean richText) {
       String[] fileTypes = fileType.split("/");
       if (fileTypes.length>1){
           fileType=fileTypes[1];
       }
        //合成后文件名
        String compositeFileName = fileName+"."+fileType;
        //文件地址
       String fileUrl =  PathUtil.getImgBasePath();
        //碎片文件名
        List<String> fileNames = new ArrayList<>();
        for (int i = 0; i <fileQuantity ; i++) {
            fileNames.add(fileUrl+"/"+fileName+"-"+i) ;
        }
        SplitAndMergeFile splitAndMergeFile = new SplitAndMergeFile();
        splitAndMergeFile.merge(fileNames,fileUrl,compositeFileName);
        redisUtil.set(fileName,compositeFileName,259200000);
        return compositeFileName;
    }



}
