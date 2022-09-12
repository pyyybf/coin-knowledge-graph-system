package com.example.coin.controller.similarity;


import com.example.coin.bl.similarity.SimilarityService;
import com.example.coin.vo.ResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author: maxueling
 * @Date: 2021-06-14
 */

@RestController()
@RequestMapping("/api/similarity")
public class SimilarityController {
    @Autowired
    SimilarityService similarityService;

    @GetMapping("/getAllSimilarity")
    public ResponseVO getAllSimilarity(@RequestParam(value = "commodityId") int commodityId,
                                       @RequestParam(value = "similarityType") int similarityType) {
        System.out.println(commodityId);
        System.out.println(similarityType);
        return ResponseVO.buildSuccess(similarityService.getAllSimilarity(commodityId, similarityType));
    }
}
