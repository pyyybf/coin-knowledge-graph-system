package com.example.coin.controller.recommend;


import com.example.coin.bl.recommend.RecommendService;
import com.example.coin.vo.ResponseVO;
import org.apache.mahout.cf.taste.common.TasteException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

/**
 * @Author: maxueling
 * @Date: 2021-06-01
 */
@RestController()
@RequestMapping("/api/recommend")
public class RecommendController {

    @Autowired
    RecommendService RecommendService;

    @GetMapping("/getUserRecommend")
    public ResponseVO getUserRecommend(@RequestParam(value = "userId") int userId) throws TasteException, SQLException, IOException {
        return ResponseVO.buildSuccess(RecommendService.getUserRecommend(userId));
    }

    @GetMapping("/getCommodityRecommend")
    public ResponseVO getCommodityRecommend(@RequestParam(value = "commodityId") int commodityId) throws TasteException, SQLException, IOException {
        return ResponseVO.buildSuccess(RecommendService.getCommodityRecommend(commodityId));
    }

    @GetMapping("/getPopularRecommend")
    public ResponseVO getPopularRecommend() throws TasteException, SQLException, IOException {
        return ResponseVO.buildSuccess(RecommendService.getPopularRecommend());
    }

}
