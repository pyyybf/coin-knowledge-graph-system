package com.example.coin.bl.collect;

import com.example.coin.po.Collect;
import com.example.coin.po.Commodity;

import java.util.List;

/**
 * @Author: panyue
 * @Date: 2021-06-09
 * 商品
 */
public interface CollectService {
    List<Integer> getCollectedCommodityIdListByUserId(int userId);

    List<Commodity> getNewestCollectedCommodityListByUserId(int userId);

    List<Commodity> getCollectedCommodityListByUserId(int userId);

    List<Collect> getCollectListByUserId(int userId);

    int addCollect(int userId, int commodityId);

    void delCollect(int userId, int commodityId);
}
