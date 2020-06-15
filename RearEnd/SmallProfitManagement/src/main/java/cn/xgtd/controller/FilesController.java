package cn.xgtd.controller;

import cn.xgtd.domain.file.BreakpointFile;
import cn.xgtd.response.CommonCode;
import cn.xgtd.response.Return.Results;
import cn.xgtd.response.Return.ResultContent;
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
    @RequestMapping(value = "/findBreakpointFile/{fileName}/{fileQuantity}/{fileSize}",method = RequestMethod.GET)
    public ResultContent findBreakpointFile(@PathVariable("fileName") String fileName , @PathVariable("fileQuantity") Integer fileQuantity ,@PathVariable("fileSize")Integer fileSize){
        Results results = new Results();
        Map map = filesService.findBreakpointFile(fileName,fileQuantity,fileSize);
        //文件是否存在
        Boolean fileExist =  (Boolean) map.get("fileExist");
        //文件是否完整
        Boolean sign = (Boolean) map.get("sign");
        //文件是否合成
        Boolean composite = (Boolean) map.get("composite");
        //文件是否存在断点
        List<BreakpointFile> breakpointFileList = (List<BreakpointFile>) map.get("breakpointFileList");

        //判断文件是否存在
        if (!fileExist){
            return new ResultContent(CommonCode.FILE_INEXISTENCE,null);
        }
        //分片数据是否正确
        if (!sign){
            return new ResultContent(CommonCode.FILE_ERROR,null);
        }
        //文件存在断点
        if(breakpointFileList.size()>0){
            results.setData(breakpointFileList);
            return new ResultContent(CommonCode.PORTION_SUCCESS,results);
        }
        //文件是否合成
        if (composite){
            //文件完整 且合成
            BreakpointFile breakpoint = new BreakpointFile();
            breakpoint.setComposite(composite);
            String fileNames = (String) map.get("fileNameComposite");
            breakpoint.setFileName(fileNames);
            results.setData(breakpoint);
            return new ResultContent(CommonCode.FILE_COMPOSITE,results);
        }else{
            //完整但未合成
            BreakpointFile breakpoint = new BreakpointFile();
            breakpoint.setComposite(composite);
            results.setData(breakpoint);
            return new ResultContent(CommonCode.NO_FILE_COMPOSITE,results);
        }
    }
    /**
     * 文件上传
     * @param fileName 文件名
     * @param file 文件
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/filesUpload",method = RequestMethod.POST)
    public ResultContent filesUpload(String fileName , MultipartFile file) throws Exception {
        Boolean  result = filesService.filesUpload(fileName,file);
        if (result){
            return new ResultContent(CommonCode.SUCCESS,null);
        }
        return new ResultContent(CommonCode.FAIL,null);
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
     * @param video 是否是视频
     * @return 新文件名
     */
    @RequestMapping(value = "/compositeFile",method = RequestMethod.POST)
    public ResultContent compositeFile(String fileName , Integer fileQuantity , String  fileType ,Boolean richText , Boolean video) throws IOException {
        Results results = new Results();
        String fileNames = filesService.compositeFile(fileName,fileQuantity,fileType, richText, video);

        results.setData(fileNames);
        return new ResultContent(CommonCode.SUCCESS,results);
    }



}
