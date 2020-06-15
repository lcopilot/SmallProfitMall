package cn.xgtd.service.impl;

import cn.xgtd.domain.file.BreakpointFile;
import cn.xgtd.service.FilesService;
import cn.xgtd.util.file.FilesUpload;
import cn.xgtd.util.file.PathUtil;
import cn.xgtd.util.file.SplitAndMergeFile;
import cn.xgtd.util.redis.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
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
     * 查询文件是否存在
     * @param fileName 文件名
     * @param fileQuantity 文件碎片数量
     * @param fileSize 文件总大小
     * @return
     */
    @Override
    public Map findBreakpointFile(String fileName , Integer fileQuantity , Integer fileSize) {
        Map map = new HashMap();

        //文件断点集合
        List<BreakpointFile> breakpointFileList = new ArrayList<>();
        //文件是上传成功 成功  失败返回断点标志
        Boolean sign = true;

        //判断文件是否合成
        Boolean composite = false;

        //文件是否存在
        Boolean fileExist = false;

        //文件总大小
        Integer fileSizes = 0;

        for (int i = 0; i <fileQuantity ; i++) {
           String  fileNames = fileName+"-"+i;
           //文件是否上传成功
            Boolean findFileSucceed = (Boolean) redisUtil.get(fileNames+"Succeed");
            BreakpointFile breakpointFile = new BreakpointFile();
            if (findFileSucceed!=null){
                breakpointFile.setBreakpointFull(findFileSucceed);
                Integer  breakpointFileSize = (Integer) redisUtil.get(fileNames+"Size");
                if (breakpointFileSize!=null){
                    fileSizes+=breakpointFileSize;
                }
            }
           //文件断点
            Integer  breakpoint = (Integer) redisUtil.get(fileNames+"Position");
            //文件是否存在断点
            if (breakpoint!=null){
                breakpointFile.setBreakpointFull(findFileSucceed);
                breakpointFile.setFileName(fileNames);
                breakpointFile.setFileSerialNumber(i);
                breakpointFile.setComposite(false);
                breakpointFile.setBreakpoint(breakpoint);
                breakpointFileList.add(breakpointFile);
            }
        }

        //判断文件是否存在断点 或者文件是否有大小
        if (breakpointFileList.size()>0 || fileSizes!=0){
            fileExist = true;
            //判断分片数据是否完整
            if (breakpointFileList.size() == 0){
                sign = fileSizes.equals(fileSize);
            }
        }

        //查询文件是否合成
        String fileNameComposite = (String) redisUtil.get(fileName+"Composite");
        if (fileNameComposite!=null){
            composite = true;
        }


        //文件是否存在
        map.put("fileExist",fileExist);
        //断点对象
        map.put("breakpointFileList",breakpointFileList);
        //文件是否完整标志
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
    public Boolean filesUpload(String fileName , MultipartFile files) throws Exception {
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

//        FileInputStream fin = (FileInputStream) fileInputStream;
        //文件上传 上传成功返回文件大小 上传失败返回失败

        Map map = FilesUpload.breakTrans(fileInputStream,fileUrl);
        Boolean succeed = (Boolean) map.get("succeed");
        redisUtil.set(fileName+"Succeed",succeed,259200000);
       if (succeed){
           Integer fileSize = (Integer) map.get("fileSize");
           redisUtil.set(fileName+"Size",fileSize,259200000);
       }
        Integer position = (Integer) map.get("position");
        redisUtil.set(fileName+"Position",position,259200000);
        return succeed;
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
            redisUtil.set(fileName+"Composite",positions,259200000);
        }


        return positions;
    }


    /**
     * 文件合成
     * @param fileName 文件名碎片
     * @return
     */
    @Override
    public String compositeFile(String fileName , Integer fileQuantity ,String  fileType , Boolean video) {
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
        redisUtil.set(fileName+"Composite",compositeFileName,259200000);
        return compositeFileName;
    }



}
