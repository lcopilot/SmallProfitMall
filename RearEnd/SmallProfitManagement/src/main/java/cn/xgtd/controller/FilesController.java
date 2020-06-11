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

    @RequestMapping(value = "/filesUpload",method = RequestMethod.POST)
    public ObjectReturnResponse filesUpload(MultipartFile file) throws IOException {
        ObjectReturn objectReturn = new ObjectReturn();
        String fileUtil = filesService.filesUpload(file);
        objectReturn.setObject(fileUtil);
        return new ObjectReturnResponse(CommonCode.SUCCESS,objectReturn);
    }
}
