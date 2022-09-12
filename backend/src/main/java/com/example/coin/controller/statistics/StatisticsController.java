package com.example.coin.controller.statistics;

import com.example.coin.bl.statistics.StatisticsService;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: yangyujia
 * @Date: 2021-04-04
 */

/**
 * @updater:maxueling
 * @Date:2021-04-05
 */
@RestController()
@RequestMapping("/api/statistics")
public class StatisticsController {
    @Autowired
    StatisticsService statisticsService;

    @GetMapping("/getAllEntityTypes")
    public ResponseVO getAllEntityTypes(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(statisticsService.getAllEntityTypes(fileId));
    }


    @GetMapping("/getAllRelationTypes")
    public ResponseVO getAllRelationTypes(@RequestParam(value = "fileId") int fileId) {
        return ResponseVO.buildSuccess(statisticsService.getAllRelationTypes(fileId));
    }

    @GetMapping("/getEntityNumByType")
    public ResponseVO getEntityNumByType(@RequestParam(value = "fileId") int fileId,
                                        @RequestParam(value="entityType") String entityType) {
        return ResponseVO.buildSuccess(statisticsService.getEntityNumByType(fileId,entityType));
    }

    @GetMapping("/getRelationNumByEntity")
    public ResponseVO getRelationNumByEntity(@RequestParam(value = "fileId") int fileId,
                                         @RequestParam(value="entityName") String entityName) {
        return ResponseVO.buildSuccess(statisticsService.getRelationNumByEntity(fileId,entityName));
    }

    @GetMapping("/getRelationNumByType")
    public ResponseVO getRelationNumByType(@RequestParam(value = "fileId") int fileId,
                                         @RequestParam(value="relationType") String relationType) {
        return ResponseVO.buildSuccess(statisticsService.getRelationNumByType(fileId,relationType));
    }

    @GetMapping("/getEntitiesByType")
    public ResponseVO getEntitiesByType(@RequestParam(value = "fileId") int fileId,
                                        @RequestParam(value="entityType") String entityType) {
        return ResponseVO.buildSuccess(statisticsService.getEntitiesByType(fileId,entityType));
    }

    @GetMapping("/getRelationsByType")
    public ResponseVO getRelationsByType(@RequestParam(value = "fileId") int fileId,
                                        @RequestParam(value="relationType") String relationType) {
        return ResponseVO.buildSuccess(statisticsService.getRelationsByType(fileId,relationType));
    }

}
