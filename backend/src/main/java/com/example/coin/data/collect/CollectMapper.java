package com.example.coin.data.collect;

import com.example.coin.po.Collect;
import com.example.coin.po.Commodity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CollectMapper {
    List<Integer> getCollectedCommodityIdListByUserId(int userId);

    List<Collect> getCollectListByUserId(int userId);

    List<Commodity> getNewestCollectedCommodityListByUserId(int userId);

    List<Commodity> getCollectedCommodityListByUserId(int userId);

    int addCollect(int userId, int commodityId);

    void delCollect(int userId, int commodityId);

    void changeCollectNum(int id, int num);
}
