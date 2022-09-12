package com.example.coin.controller.reader;

import com.example.coin.bl.reader.ReaderService;
import com.example.coin.vo.ResponseVO;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: panyue
 * @Date: 2021-03-29
 */
@RestController()
@RequestMapping("/api/reader")
public class ReaderController {
    @Autowired
    ReaderService readerService;

    @PostMapping("/uploadFile")
    public ResponseVO uploadFile(@RequestParam(value = "url") String fileUrl,
                                 @RequestParam(value = "name") String fileName) {
        try {
            return ResponseVO.buildSuccess(readerService.readURL(fileUrl, fileName));
        } catch (JSONException e) {
            System.out.println("文件内容错误！");
            return ResponseVO.buildFailure("文件无法解析，请确认内容是否正确！");
        }
    }

    @GetMapping("/getAllFiles")
    public ResponseVO getAllFiles() {
        return ResponseVO.buildSuccess(readerService.getAllFiles());
    }

    @DeleteMapping("/deleteFileById")
    public ResponseVO deleteFileById(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(readerService.deleteFileById(fileId));
    }

    //测试前后端连接
//    @GetMapping("/test")
//    public ResponseVO test() {
//        return ResponseVO.buildSuccess("SUCCESS!");
//    }
}