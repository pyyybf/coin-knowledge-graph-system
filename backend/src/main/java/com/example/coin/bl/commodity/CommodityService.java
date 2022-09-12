package com.example.coin.bl.commodity;

import com.example.coin.po.Commodity;

import java.util.List;

/**
 * @Author: panyue
 * @Date: 2021-06-09
 * 商品
 */
public interface CommodityService {
    /**
     * 获取所有商品信息
     *
     * @return
     */
    List<Commodity> getAllCommodities();

    List<String> getCommentByCommodityId(int commodityId);
}
