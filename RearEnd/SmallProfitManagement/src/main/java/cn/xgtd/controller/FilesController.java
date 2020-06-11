package cn.xgtd.controller;

import cn.xgtd.response.CommonCode;
import cn.xgtd.response.objectReturn.ObjectReturn;
import cn.xgtd.response.objectReturn.ObjectReturnResponse;
import cn.xgtd.service.FilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * 文件上传控制层
 * @author Kite
 * @date 2020/6/11
 */
@Controller
@RequestMapping("/filesController")
@ResponseBody
public class FilesController {

    @Autowired
    FilesService filesService;


    /**
     * 生成文件名
     * @return
     */
    @RequestMapping(value = "/getFileName",method = RequestMethod.GET)
    public ObjectReturnResponse getFileName() {
        ObjectReturn objectReturn = new ObjectReturn();
        String fileUtil = filesService.getFileName();
        objectReturn.setObject(fileUtil);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }

    /**
     * 文件上传
     * @param fileName 文件名
     * @param file 文件
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/filesUpload",method = RequestMethod.POST)
    public ObjectReturnResponse filesUpload(String fileName ,MultipartFile file) throws IOException {
        filesService.filesUpload(fileName,file);
        return new ObjectReturnResponse(CommonCode.SUCCESS,null);
    }

    /**
     * 文件合成
     * @param fileName 文件碎片名
     * @param fileQuantity 文件碎片数量
     * @param fileType 文件类型
     * @param richText 是否是富文本
     * @return 新文件名
     */
    @RequestMapping(value = "/compositeFile",method = RequestMethod.POST)
    public ObjectReturnResponse compositeFile(String fileName , Integer fileQuantity ,String  fileType , Boolean richText){
        ObjectReturn objectReturn = new ObjectReturn();
        String fileNames = filesService.compositeFile(fileName,fileQuantity,fileType,richText);
        objectReturn.setObject(fileNames);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }
}
