package com.example.coin.Function;

import com.example.coin.TmallApplicationTest;
import com.example.coin.bl.recommend.RecommendService;
import com.example.coin.po.Commodity;
import org.apache.mahout.cf.taste.common.TasteException;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


public class RecommendFunctionTest extends TmallApplicationTest {
    @Autowired
    RecommendService recommendService;

    @Test
    public void testGetUserRecommend() throws TasteException, IOException, SQLException {
        List<Commodity> result=recommendService.getUserRecommend(2);
        //System.out.println(result.get(0).getId());
        Assert.assertEquals(137,result.get(0).getId());
    }

    @Test
    public void testGetCommodityRecommend() throws TasteException, IOException, SQLException {
        List<Commodity> result=recommendService.getCommodityRecommend(1);
        System.out.println(result.get(0).getId());
        Assert.assertEquals(333,result.get(0).getId());
    }

}
