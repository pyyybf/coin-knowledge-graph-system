package com.example.coin.controller.commodity;

import com.example.coin.bl.commodity.CommodityService;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: panyue
 * @Date: 2021-06-09
 */
@RestController()
@RequestMapping("/api/commodity")
public class CommodityController {
    @Autowired
    CommodityService commodityService;

    @GetMapping("/getAllCommodities")
    public ResponseVO getAllCommodities() {
        return ResponseVO.buildSuccess(commodityService.getAllCommodities());
    }

    @GetMapping("/getCommentByCommodityId")
    public ResponseVO getCommentByCommodityId(@RequestParam(value = "commodityId") int commodityId){
        return ResponseVO.buildSuccess(commodityService.getCommentByCommodityId(commodityId));
    }
}
