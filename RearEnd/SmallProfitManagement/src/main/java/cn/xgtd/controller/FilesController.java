package cn.xgtd.controller;

import cn.xgtd.domain.file.BreakpointFile;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.objectReturn.ObjectReturn;
import cn.xgtd.response.objectReturn.ObjectReturnResponse;
import cn.xgtd.service.FilesService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

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
     * 查询断点文件
     * @param fileName 文件名
     * @param fileQuantity 文件碎片数量
     * @return
     */
    @RequestMapping(value = "/findBreakpointFile/{fileName}/{fileQuantity}",method = RequestMethod.GET)
    public ObjectReturnResponse findBreakpointFile(@PathVariable("fileName") String fileName ,@PathVariable("fileQuantity") Integer fileQuantity){
        ObjectReturn objectReturn = new ObjectReturn();
        Map map = filesService.findBreakpointFile(fileName,fileQuantity);
        Boolean sign = (Boolean) map.get("sign");
        if(!sign){
            List<BreakpointFile> breakpointFileList = (List<BreakpointFile>) map.get("breakpointFileList");
            objectReturn.setObject(breakpointFileList);
        }else {
            objectReturn.setObject(sign);
            return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
        }
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
        Integer position = filesService.filesUpload(fileName,file);
        if (position <0){
            ObjectReturn objectReturn = new ObjectReturn();
            objectReturn.setObject(position);
            return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
        }
        return new ObjectReturnResponse(CommonCode.SUCCESS,null);
    }

    /**
     * 断点续传
     * @param fileName 文件名
     * @param position 断点位置
     * @return
     */
    @RequestMapping(value = "/filesBreakpointUpload",method = RequestMethod.POST)
    public ObjectReturnResponse filesBreakpointUpload(String fileName , MultipartFile file,Integer position) throws IOException {
        ObjectReturn objectReturn = new ObjectReturn();
        Integer positions = filesService.filesBreakpointUpload(fileName,file,position);
        if (positions == -1){
            return new ObjectReturnResponse(CommonCode.SUCCESS,null);
        }
        objectReturn.setObject(positions);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
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
