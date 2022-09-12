package com.example.coin.unitTest;

import com.example.coin.CoinApplication;
import com.example.coin.data.collect.CollectMapper;
import com.example.coin.po.Collect;
import com.example.coin.po.Commodity;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@SpringBootTest(classes = CoinApplication.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringJUnit4ClassRunner.class)
public class CollectMapperTest {
    @Autowired
    CollectMapper collectMapper;

    @Test
    public void testCollectedCommodityIdListByUserId(){
        List<Integer> idList=collectMapper.getCollectedCommodityIdListByUserId(2);
        Assert.assertEquals("544",String.valueOf(idList.get(0)));
    }

    @Test
    public void testCollectListByUserId(){
        List<Collect> collectList=collectMapper.getCollectListByUserId(2);
        Assert.assertEquals(10,collectList.size());
    }

    @Test
    public void testNewestCollectedCommodityListByUserId(){
        List<Commodity> commodityList=collectMapper.getNewestCollectedCommodityListByUserId(2);
        Assert.assertEquals(92,commodityList.get(0).getId());
    }

    @Test
    public void testCollectedCommodityListByUserId(){
        List<Commodity> commodityList=collectMapper.getCollectedCommodityListByUserId(2);
        Assert.assertEquals(544,commodityList.get(0).getId());
    }



}
