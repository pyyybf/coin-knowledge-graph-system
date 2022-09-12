package com.example.coin.blImpl.collect;

import com.example.coin.bl.collect.CollectService;
import com.example.coin.data.collect.CollectMapper;
import com.example.coin.po.Collect;
import com.example.coin.po.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectServiceImpl implements CollectService {
    @Autowired
    CollectMapper collectMapper;

    @Override
    public List<Integer> getCollectedCommodityIdListByUserId(int userId) {
        return collectMapper.getCollectedCommodityIdListByUserId(userId);
    }

    @Override
    public List<Commodity> getNewestCollectedCommodityListByUserId(int userId) {
        return collectMapper.getNewestCollectedCommodityListByUserId(userId);
    }

    @Override
    public List<Commodity> getCollectedCommodityListByUserId(int userId) {
        return collectMapper.getCollectedCommodityListByUserId(userId);
    }

    @Override
    public List<Collect> getCollectListByUserId(int userId) {
        return collectMapper.getCollectListByUserId(userId);
    }

    @Override
    public int addCollect(int userId, int commodityId) {
        collectMapper.changeCollectNum(commodityId,1);
        return collectMapper.addCollect(userId, commodityId);
    }

    @Override
    public void delCollect(int userId, int commodityId) {
        collectMapper.changeCollectNum(commodityId,-1);
        collectMapper.delCollect(userId, commodityId);
    }
}

