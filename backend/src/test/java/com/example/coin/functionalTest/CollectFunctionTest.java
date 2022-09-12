package com.example.coin.Function;

import com.example.coin.TmallApplicationTest;
import com.example.coin.bl.collect.CollectService;
import com.example.coin.controller.collect.CollectController;
import com.example.coin.po.Collect;
import com.example.coin.po.Commodity;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CollectFunctionTest extends TmallApplicationTest {
    @Autowired
    CollectService collectService;

    @Test
    public void testGetCollectedCommodityIdListByUserId(){
        List<Integer> result=collectService.getCollectedCommodityIdListByUserId(2);
        Assert.assertEquals("544",String.valueOf(result.get(0)));
    }

    @Test
    public void testGetCollectListByUserId(){
        List<Collect> collectList=collectService.getCollectListByUserId(2);
        Assert.assertEquals(10,collectList.size());
    }

    @Test
    public void testGetNewestCollectedCommodityListByUserId(){
        List<Commodity> commodityList=collectService.getNewestCollectedCommodityListByUserId(2);
        Assert.assertEquals(92,commodityList.get(0).getId());
    }

    @Test
    public void testGetCollectedCommodityListByUserId(){
        List<Commodity> commodityList=collectService.getCollectedCommodityListByUserId(2);
        Assert.assertEquals(544,commodityList.get(0).getId());
    }
}
