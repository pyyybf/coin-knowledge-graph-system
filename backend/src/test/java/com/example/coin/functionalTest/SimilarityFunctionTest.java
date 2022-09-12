package com.example.coin.Function;

import com.example.coin.TmallApplicationTest;
import com.example.coin.bl.similarity.SimilarityService;
import com.example.coin.po.Commodity;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class SimilarityFunctionTest extends TmallApplicationTest {
    @Autowired
    SimilarityService similarityService;

    @Test
    public void testGetAllSimilarity(){
        List<Commodity> commodityList=similarityService.getAllSimilarity(2,0);
        //System.out.println(commodityList.get(0).getId());
        Assert.assertEquals(15,commodityList.get(0).getId());
    }
}
