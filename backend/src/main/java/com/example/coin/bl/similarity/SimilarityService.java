package com.example.coin.bl.similarity;

import com.example.coin.po.Commodity;

import java.util.List;
/**
 * @Author: maxueling
 * @Date: 2021-06-14
 * 商品
 */
public interface SimilarityService {

    List<Commodity> getAllSimilarity(int commodityId,int similarityType);
}
