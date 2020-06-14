package cn.xgtd.controller;

import cn.xgtd.domain.file.BreakpointFile;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.objectReturn.Results;
import cn.xgtd.response.objectReturn.ResultContent;
import cn.xgtd.service.FilesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
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
    public ResultContent getFileName() {
        Results results = new Results();
        String fileUtil = filesService.getFileName();
        results.setData(fileUtil);
        return new ResultContent(CommonCode.SUCCESS,results);
    }

    /**
     * 查询断点文件
     * @param fileName 文件名
     * @param fileQuantity 文件碎片数量
     * @return
     */
    @RequestMapping(value = "/findBreakpointFile/{fileName}/{fileQuantity}",method = RequestMethod.GET)
    public ResultContent findBreakpointFile(@PathVariable("fileName") String fileName , @PathVariable("fileQuantity") Integer fileQuantity){
        Results results = new Results();
        Map map = filesService.findBreakpointFile(fileName,fileQuantity);
        Boolean sign = (Boolean) map.get("sign");
        if(!sign){
            List<BreakpointFile> breakpointFileList = (List<BreakpointFile>) map.get("breakpointFileList");
            results.setData(breakpointFileList);
        }else {
            return new ResultContent(CommonCode.FILE_INEXISTENCE,null);
        }
        return new ResultContent(CommonCode.FAIL,null);
    }
    /**
     * 文件上传
     * @param fileName 文件名
     * @param file 文件
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/filesUpload",method = RequestMethod.POST)
    public ResultContent filesUpload(String fileName , MultipartFile file) throws IOException {
        Integer position = filesService.filesUpload(fileName,file);
        if (position <0){
            Results results = new Results();
            results.setData(position);
            return new ResultContent(CommonCode.SUCCESS,results);
        }
        return new ResultContent(CommonCode.SUCCESS,null);
    }

    /**
     * 断点续传
     * @param fileName 文件名
     * @param position 断点位置
     * @return
     */
    @RequestMapping(value = "/filesBreakpointUpload",method = RequestMethod.POST)
    public ResultContent filesBreakpointUpload(String fileName , MultipartFile file, Integer position) throws IOException {
        Results results = new Results();
        Integer positions = filesService.filesBreakpointUpload(fileName,file,position);
        if (positions == -1){
            return new ResultContent(CommonCode.SUCCESS,null);
        }
        results.setData(positions);
        return new ResultContent(CommonCode.SUCCESS,results);
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
    public ResultContent compositeFile(String fileName , Integer fileQuantity , String  fileType , Boolean richText){
        Results results = new Results();
        String fileNames = filesService.compositeFile(fileName,fileQuantity,fileType,richText);
        results.setData(fileNames);
        return new ResultContent(CommonCode.SUCCESS,results);
    }



}
