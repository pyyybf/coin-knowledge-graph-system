package com.example.coin.controller.exporter;

import com.example.coin.bl.exporter.ExporterService;
import com.example.coin.vo.ResponseVO;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: panyue
 * @Date: 2021-03-19
 */
@RestController()
@RequestMapping("/api/exporter")
public class ExporterController {
    @Autowired
    ExporterService exporterService;

    @GetMapping("/exportXMLFile")
    public ResponseVO exportXMLFile(@RequestParam(value = "fileId") int fileId) {
        System.out.println("this is a test to find whether we get it,fileId=" + fileId);
        return ResponseVO.buildSuccess(exporterService.exportXMLDataFile(fileId));
    }
}
