package com.example.coin.Function;

import com.example.coin.TmallApplicationTest;
import com.example.coin.bl.commodity.CommodityService;
import com.example.coin.po.Commodity;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class CommodityFunctionTest extends TmallApplicationTest {
    @Autowired
    CommodityService commodityService;

    @Test
    public void testGetAllCommodities(){
        List<Commodity> result=new ArrayList<>();
        result=commodityService.getAllCommodities();
        Assert.assertEquals(625,result.size());
    }

    @Test
    public void testGetCommentByCommodityId(){
        List<String> result=commodityService.getCommentByCommodityId(2);
        Assert.assertEquals(7,result.size());
    }

}
