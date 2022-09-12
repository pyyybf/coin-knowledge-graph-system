package com.example.coin.controller.collect;

import com.example.coin.bl.collect.CollectService;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: panyue
 * @Date: 2021-06-09
 */
@RestController()
@RequestMapping("/api/collect")
public class CollectController {
    @Autowired
    CollectService collectService;

    @GetMapping("/getCollectedCommodityIdListByUserId")
    public ResponseVO getCollectedCommodityIdListByUserId(@RequestParam(value = "userId") int userId) {
        return ResponseVO.buildSuccess(collectService.getCollectedCommodityIdListByUserId(userId));
    }

    @GetMapping("/getNewestCollectedCommodityListByUserId")
    public ResponseVO getNewestCollectedCommodityListByUserId(@RequestParam(value = "userId") int userId) {
        return ResponseVO.buildSuccess(collectService.getNewestCollectedCommodityListByUserId(userId));
    }

    @PostMapping("/addCollect")
    public ResponseVO addCollect(@RequestParam(value = "userId") int userId,
                                 @RequestParam(value = "commodityId") int commodityId) {
        return ResponseVO.buildSuccess(collectService.addCollect(userId, commodityId));
    }

    @DeleteMapping("/delCollect")
    public ResponseVO delCollect(@RequestParam(value = "userId") int userId,
                                 @RequestParam(value = "commodityId") int commodityId) {
        try{
            collectService.delCollect(userId, commodityId);
            return ResponseVO.buildSuccess();
        }catch (Exception e){
            return ResponseVO.buildFailure("取消收藏失败");
        }
    }

    @GetMapping("/getCollectedCommodityListByUserId")
    public ResponseVO getCollectedCommodityListByUserId(@RequestParam(value = "userId") int userId) {
        return ResponseVO.buildSuccess(collectService.getCollectedCommodityListByUserId(userId));
    }

    @GetMapping("/getCollectListByUserId")
    public ResponseVO getCollectListByUserId(@RequestParam(value = "userId") int userId) {
        return ResponseVO.buildSuccess(collectService.getCollectListByUserId(userId));
    }
}
