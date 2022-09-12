package com.example.coin.blImpl.commodity;

import com.example.coin.bl.commodity.CommodityService;
import com.example.coin.data.commodity.CommodityMapper;
import com.example.coin.po.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    CommodityMapper commodityMapper;

    @Override
    public List<Commodity> getAllCommodities() {
        return commodityMapper.getAllCommodities();
    }

    @Override
    public List<String> getCommentByCommodityId(int commodityId) {
        return commodityMapper.getCommentByCommodityId(commodityId);
    }
}

